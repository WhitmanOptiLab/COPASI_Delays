// WhitmanOptiLab - DDEINT METHOD -
// Professor: John Stratton
// Contributor: Julio De Jesus
// Date: July 1st, 2026
// College: Whitman College
// TO DO:
// CURRENTLY MISSING THE DEBUGGING FEATURES FOUND IN THE OTHERS MUST IMPLEMENT



#include "CDdeintMethod.h"

// COPASI Core Utilities
#include "copasi/math/CMathContainer.h"
#include "copasi/trajectory/CTrajectoryProblem.h"
#include "copasi/core/CDataContainer.h"

#include <stdexcept>
#include <vector>
#include <functional>

// Initialize the static tracking pointer to null at file scope
CDdeintMethod* CDdeintMethod::spActiveInstance = nullptr;

// Free-function trampoline. This is the symbol bound into DDE_Solver_Type's
// template parameter (see the typedef in the header), since a
// pointer-to-member-function can't be used there. It forwards the call on to
// whichever instance is currently active.
void CDdeintMethod_dispatch(double t, std::vector<double> &y, std::vector<double> &ydot,
                             History<double, double> &history)
{
  // Safety check to ensure we have a valid object instance running the step
  if (!CDdeintMethod::spActiveInstance) return;

  CDdeintMethod::spActiveInstance->evalF(t, y, ydot, history);
}

// Specific Constructor (The one COPASI's factory subsystem will call)
CDdeintMethod::CDdeintMethod(const CDataContainer * pParent,
                             const CTaskEnum::Method & methodType,
                             const CTaskEnum::Task & taskType)
  : CTrajectoryMethod(pParent, methodType, taskType)
  , mpRelativeTolerance(nullptr)
  , mpAbsoluteTolerance(nullptr)
  , mpMaxInternalSteps(nullptr)
  , mpMaxInternalStepSize(nullptr)
  , mpY(nullptr)
  , mpYdot(nullptr)
  , mTime(0.0)
  , mpSolver(nullptr)
{
  mData.pMethod = this;

  // Tolerances are method parameters (CCopasiParameter), not properties of
  // CTrajectoryProblem -- mirrors CLsodaMethod's constructor-time setup.
  // assertParameter creates the parameter if missing and returns a live
  // pointer directly into its stored value.
  mpRelativeTolerance = assertParameter("Relative Tolerance", CCopasiParameter::Type::UDOUBLE, (C_FLOAT64) 1.0e-9);
  mpAbsoluteTolerance = assertParameter("Absolute Tolerance", CCopasiParameter::Type::UDOUBLE, (C_FLOAT64) 1.0e-9);
}


// Copy Constructor
CDdeintMethod::CDdeintMethod(const CDdeintMethod & src,
                             const CDataContainer * pParent)
  : CTrajectoryMethod(src, pParent)
  , mData(src.mData)
  , mpRelativeTolerance(nullptr)
  , mpAbsoluteTolerance(nullptr)
  , mpMaxInternalSteps(nullptr)
  , mpMaxInternalStepSize(nullptr)
  , mpY(nullptr)
  , mpYdot(nullptr)
  , mTime(src.mTime)
  , mInitConds(src.mInitConds)
  , mMaxDelays(src.mMaxDelays)
  , mPrehistory(src.mPrehistory)
  , mpSolver(nullptr)
{
  mData.pMethod = this;

  // If the source had an active solver, allocate a fresh one for this clone
  // instead of copying the pointer, to avoid double-delete/aliasing. We only
  // copy the solver's setup (dimension, delays, prehistory) above, not its
  // internal integration state.
  if (src.mpSolver)
    {
      mpSolver = new DDE_Solver_Type(mData.dim, mMaxDelays, mPrehistory);
    }
}
    

// Destructor
CDdeintMethod::~CDdeintMethod()
{
  // If this instance was the last one to run, clear the tracker so it
  // doesn't dangle after this object is destroyed.
  if (spActiveInstance == this)
    {
      spActiveInstance = nullptr;
    }

  delete mpSolver;
}

// Start: Prepare the method for integration and allocate memory maps
void CDdeintMethod::start()
{
  CTrajectoryMethod::start();

  // Extract the starting time directly from COPASI's state vector
  mTime = *mpContainerStateTime;
  
  // Calculate the active ODE/DDE system dimension exactly like LSODA does
  mData.dim = (C_INT)(mContainerState.size() - mpContainer->getCountFixedEventTargets());

  // mpContainerStateTime[0] is time itself; the real state variables start
  // at index 1, so mpY/mpYdot skip past it.
  mpY = mpContainerStateTime + 1;
  mpYdot = mpContainer->getRate(false).array() + 1;

  // Note: mpAbsoluteTolerance / mpRelativeTolerance are already set up as
  // method parameters in the constructor via assertParameter(), so no
  // per-start() lookup against the problem is needed here.

  // Synchronize current COPASI state snapshots into our initial condition vector
  mInitConds.resize(mData.dim);
  for (C_INT i = 0; i < mData.dim; ++i)
    {
      mInitConds[i] = mpY[i];
    }

  // TODO(delays): placeholder -- every variable currently gets the same fixed
  // delay (0.1) regardless of the model's actual delay structure. This needs
  // to read real per-variable delay values before it's usable for anything
  // beyond initial testing.
  mMaxDelays.assign(mData.dim, 0.1);

  // TODO(prehistory): placeholder -- assumes a flat/constant history (the
  // initial value) for all t < t0. Real DDE problems may need a non-constant
  // history function; this will need to be replaced eventually.
  mPrehistory.clear();
  for (C_INT i = 0; i < mData.dim; ++i)
    {
      double initial_val = mInitConds[i];
      mPrehistory.push_back([initial_val](double /*t*/) { return initial_val; });
    }

  // Allocate or refresh our DDEInt template instance
  delete mpSolver;
  mpSolver = new DDE_Solver_Type(mData.dim, mMaxDelays, mPrehistory);

  // Initialize the performance configurations and thresholds on your solver
  double initial_h = 1e-6;
  double min_h = 1e-12;
  
  double atol = mpAbsoluteTolerance ? *mpAbsoluteTolerance : 1e-9;
  double rtol = mpRelativeTolerance ? *mpRelativeTolerance : 1e-9;

  mpSolver->initialize(mTime, initial_h, min_h, mInitConds, atol, rtol, false);
}

// Step: Progress the integration forward by deltaT
CTrajectoryMethod::Status CDdeintMethod::step(const double & deltaT, const bool & /*final*/)
{
  if (!mpSolver) return FAILURE;

  double targetTime = mTime + deltaT;

  // Point the static instance tracker to 'this' right before launching the
  // solver, so CDdeintMethod_dispatch() (called from inside integrate_to())
  // knows which object's evalF() to invoke.
  // NOTE: not thread-safe -- assumes only one CDdeintMethod instance steps
  // at a time, which holds for COPASI's current single-threaded trajectory
  // task but would break under any future parallel execution.
  spActiveInstance = this;

  try
    {
      // TODO: 10000 is an unexplained internal step-count cap. Consider
      // wiring this to mpMaxInternalSteps (currently unused, see header)
      // instead of leaving it hardcoded here.
      std::vector<double> next_state = mpSolver->integrate_to(targetTime, 10000);

      // Sync the integrated values back directly into COPASI's active runtime state
      mTime = targetTime;
      *mpContainerStateTime = mTime;
      for (C_INT i = 0; i < mData.dim; ++i)
        {
          mpY[i] = next_state[i];
        }

      // evalF() was last invoked by the solver on an intermediate stage vector,
      // not necessarily next_state itself, so dependent/assignment values may be
      // stale relative to the state we just wrote. Refresh them for the actual
      // accepted final state (mirrors CHybridNextReactionRKMethod::integrateDeterministicPart).
      mpContainer->updateSimulatedValues(*mpReducedModel);

      return NORMAL;
    }
  catch (const std::exception & e)
    {
      // TODO: mErrorMsg is captured but not yet surfaced to the user. LSODA
      // reports its equivalent via CCopasiMessage(CCopasiMessage::EXCEPTION,
      // MCTrajectoryMethod + 6, ...), but that message ID is specific to
      // LSODA's own error text -- DDEINT should get its own registered
      // message ID before doing the same here.
      mErrorMsg.str("");
      mErrorMsg << "CDdeintMethod: integration failed: " << e.what();
      return FAILURE;
    }
}

// evalF: the right-hand-side function the solver calls (via
// CDdeintMethod_dispatch -> spActiveInstance) every time it needs a
// derivative evaluation. Called potentially many times per step(), including
// at intermediate/rejected stage values, not just once per accepted step.
void CDdeintMethod::evalF(double t, std::vector<double> &y, std::vector<double> &ydot,
                           History<double, double> &/*history*/)
{
  // 1. Write the solver's current trial state into COPASI's live state memory
  *mpContainerStateTime = t;
  for (C_INT i = 0; i < mData.dim; ++i)
    {
      mpY[i] = y[i];
    }

  // 2. Force COPASI to recalculate algebraic equations, assignments, and rates
  mpContainer->updateSimulatedValues(*mpReducedModel);

  // 3. Read the freshly calculated derivatives back out for the solver
  for (C_INT i = 0; i < mData.dim; ++i)
    {
      ydot[i] = mpYdot[i];
    }
}

// Suitability Check: Tells COPASI whether this solver can handle the specific model configuration
bool CDdeintMethod::isValidProblem(const CCopasiProblem * pProblem)
{
  if (!CTrajectoryMethod::isValidProblem(pProblem))
    return false;

  const CTrajectoryProblem * pTP = static_cast<const CTrajectoryProblem *>(pProblem);
  if (!pTP)
    {
      return false;
    }

  return true;
}

// State Change: Fired by COPASI if events modify variables from the outside mid-run
void CDdeintMethod::stateChange(const CMath::StateChange & /*change*/)
{
  // When a state change occurs outside the solver's step control,
  // we must reset our internal tracking to prevent history interpolation errors.
  if (mpSolver)
    {
      mTime = *mpContainerStateTime;
      for (C_INT i = 0; i < mData.dim; ++i)
        {
          mInitConds[i] = mpY[i];
        }

      double atol = mpAbsoluteTolerance ? *mpAbsoluteTolerance : 1e-9;
      double rtol = mpRelativeTolerance ? *mpRelativeTolerance : 1e-9;
      
      mpSolver->initialize(mTime, 1e-6, 1e-12, mInitConds, atol, rtol, false);
    }
}

// Children Elevation: Required framework utility for internal object up-casting
bool CDdeintMethod::elevateChildren()
{
  return true;
}