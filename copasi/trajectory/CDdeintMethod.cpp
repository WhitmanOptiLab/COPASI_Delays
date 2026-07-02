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
  // Mirroring LSODA's internal memory validation check
  assert((void *) &mData == (void *) &mData.dim);
  mData.pMethod = this;
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
  assert((void *) &mData == (void *) &mData.dim);
  mData.pMethod = this;

  // If the source had an active solver instance, initialize a clean one for this clone.
  // mData is now copied above, so mData.dim is valid here and in every other member
  // function that reads it before start() gets called again on the clone.
  if (src.mpSolver)
    {
      mpSolver = new DDE_Solver_Type(mData.dim, mMaxDelays, mPrehistory);
    }
}
    

// Destructor
CDdeintMethod::~CDdeintMethod()
{
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

  // Point mpY to the first continuous variable state (skipping the time slot at index 0)
  mpY = mpContainerStateTime + 1;
  
  // Point mpYdot to the beginning of COPASI's rate calculation array
  mpYdot = mpContainer->getRate().array() + 1;

  // Extract pointer links to the problem tolerances
  CTrajectoryProblem* pProblem = static_cast<CTrajectoryProblem*>(mpProblem);
  if (pProblem)
    {
      mpAbsoluteTolerance = pProblem->getAbsoluteToleranceReference();
      mpRelativeTolerance = pProblem->getRelativeToleranceReference();
    }

  // Synchronize current COPASI state snapshots into our initial condition vector
  mInitConds.resize(mData.dim);
  for (C_INT i = 0; i < mData.dim; ++i)
    {
      mInitConds[i] = mpY[i];
    }

  // Set up delay allocations (using a baseline placeholder delay of 0.1 for initial system testing)
  mMaxDelays.assign(mData.dim, 0.1);
  mPrehistory.clear();
  for (C_INT i = 0; i < mData.dim; ++i)
    {
      // Baseline tracking prehistory: yields the starting state for any historical t < t0
      double initial_val = mInitConds[i];
      mPrehistory.push_back([initial_val](double /*t*/) { return initial_val; });
    }

  // Allocate or refresh our DDEInt template instance
  if (mpSolver)
    {
      delete mpSolver;
    }
  mpSolver = new DDE_Solver_Type(mData.dim, mMaxDelays, mPrehistory);

  // Initialize the performance configurations and thresholds on your solver
  double initial_h = 1e-6;
  double min_h = 1e-12;
  
  double atol = mpAbsoluteTolerance ? *mpAbsoluteTolerance : 1e-9;
  double rtol = mpRelativeTolerance ? *mpRelativeTolerance : 1e-9;

  mpSolver->initialize(mTime, initial_h, min_h, mInitConds, atol, rtol, false, false);
}

// Step: Progress the integration forward by deltaT
CTrajectoryMethod::Status CDdeintMethod::step(const double & deltaT, const bool & /*final*/)
{
  if (!mpSolver) return FAILURE;

  double targetTime = mTime + deltaT;

  // CRITICAL: Point the static instance tracker to 'this' right before launching the solver loop
  spActiveInstance = this;

  try
    {
      // Request your DoPri_5 solver to step forward to the targeted interval marker
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
  catch (const std::exception & /*e*/)
    {
      return FAILURE;
    }
}

// Static Bridge: Catches the raw function pointer execution call from DoPri_5
void CDdeintMethod::EvalF(double t, std::vector<double> &y, std::vector<double> &ydot, History<double, double> &/*history*/)
{
  // Safety check to ensure we have a valid object instance running the step
  if (!spActiveInstance) return;

  // Pass execution directly over to the active member method
  spActiveInstance->evalF(t, y, ydot);
}

// Member Evaluation: Drives COPASI's internal math matrix update loop
void CDdeintMethod::evalF(double t, std::vector<double> &y, std::vector<double> &ydot)
{
  // 1. Write the solver's current testing state directly into COPASI's state vector memory maps
  *mpContainerStateTime = t;
  for (C_INT i = 0; i < mData.dim; ++i)
    {
      mpY[i] = y[i];
    }

  // 2. Force COPASI to recalculate algebraic equations, assignments, and rates
  mpContainer->updateSimulatedValues(*mpReducedModel);

  // 3. Extract the freshly calculated derivatives directly from COPASI's mpYdot array
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
      
      mpSolver->initialize(mTime, 1e-6, 1e-12, mInitConds, atol, rtol, false, false);
    }
}

// Children Elevation: Required framework utility for internal object up-casting
bool CDdeintMethod::elevateChildren()
{
  return true;
}