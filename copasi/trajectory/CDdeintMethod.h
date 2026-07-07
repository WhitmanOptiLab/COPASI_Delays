// WhitmanOptiLab - DDEINT METHOD -
// Professor: John Stratton
// Contributer: Julio De Jesus
// Date: July 1st, 2026
// College: Whitman College

#ifndef COPASI_CDdeintMethod
#define COPASI_CDdeintMethod

#include <vector>
#include <functional>
#include <sstream>

#include "copasi/core/CVector.h"
#include "copasi/trajectory/CTrajectoryMethod.h"
#include "copasi/trajectory/CRootFinder.h"

#include "DDEINT/Methods/Dormand_Prince/DoPri_5.hpp"
#include "DDEINT/history/history.hpp"

class CDdeintMethod;

// DoPri_5 (the DDE solver) is a template that needs a plain function pointer
// for its callback -- it has no slot for a 'this' pointer, so a member
// function like CDdeintMethod::evalF can't be passed to it directly. This
// free function is what actually gets bound to the solver; it looks up
// spActiveInstance (see below) and forwards the call to that instance's
// evalF().
void CDdeintMethod_dispatch(double t, std::vector<double> &y, std::vector<double> &ydot, History<double, double> &history);

class CDdeintMethod : public CTrajectoryMethod
{
  // Needs friend access so it can reach the private spActiveInstance pointer.
  friend void CDdeintMethod_dispatch(double t,  std::vector<double> &y, std::vector<double> &ydot, History<double, double> &history);

public:
  struct Data
    {
      C_INT dim;
      CDdeintMethod * pMethod;
    };

  // Attributes
protected:
  // mData.dim is the dimension of the system.
  // mData.pMethod contains CDdeintMethod * this to be used by the dispatch trampoline
  Data mData;

  // current time
  C_FLOAT64 mTime;

private:
  // Points at whichever CDdeintMethod instance is currently integrating.
  // CDdeintMethod_dispatch() reads this to know which object's evalF() to
  // call, since the solver only gives it a free-function callback with no
  // way to carry instance context.
  static CDdeintMethod * spActiveInstance;

  // A pointer to the value of "Relative Tolerance"
  C_FLOAT64 * mpRelativeTolerance;

  // A pointer to the value of "Absolute Tolerance"
  C_FLOAT64 * mpAbsoluteTolerance;

  // A pointer to the value of "Max Internal Steps"
  // TODO: not yet wired up via assertParameter() in the constructor -- currently unused.
  unsigned C_INT32 * mpMaxInternalSteps;

  // A pointer to the value of "Max Internal Step Size"
  // TODO: not yet wired up via assertParameter() in the constructor -- currently unused.
  C_FLOAT64 * mpMaxInternalStepSize;

  // A pointer to the first continuous variable state concentration array inside COPASI
  C_FLOAT64 * mpY;

  // A pointer to the beginning of COPASI's calculated derivative rate array
  const C_FLOAT64 * mpYdot;

  // DDEINT Solver and History Setup
  std::vector<double> mInitConds;
  std::vector<double> mMaxDelays;
  std::vector<std::function<double(double)>> mPrehistory;

  // Captures the message from any exception caught in step(), so it isn't
  // silently discarded. Mirrors CLsodaMethod's mErrorMsg.
  std::ostringstream mErrorMsg;

  // Instantiates the Dormand-Prince 5 solver, bound at compile time to our
  // dispatch trampoline above (not a member function -- see its comment).
  typedef DoPri_5<CDdeintMethod_dispatch> DDE_Solver_Type;
  DDE_Solver_Type * mpSolver;

  // Operations
private:
  // Constructor
  CDdeintMethod();

public:
  // Specific constructor matching COPASI's factory assignment pattern
  CDdeintMethod(const CDataContainer * pParent,
                const CTaskEnum::Method & methodType = CTaskEnum::Method::DDEINT,
                const CTaskEnum::Task & taskType = CTaskEnum::Task::timeCourse);

  // copy constructor
  CDdeintMethod(const CDdeintMethod & src,
                const CDataContainer * pParent);

  // deconstructor
  ~CDdeintMethod();

  Status step(const double & deltaT, const bool & final = false) override;

  void start() override;

  /**
   * Check if the method is suitable for this problem
   * @return bool suitability of the method
   */
  bool isValidProblem(const CCopasiProblem * pProblem) override;

  /**
   * This methods must be called to elevate subgroups to
   * derived objects. The default implementation does nothing.
   * @return bool success
   */
  bool elevateChildren() override;

  /**
   * Inform the trajectory method that the state has changed outside
   * its control
   * @param const CMath::StateChange & change
   */
  void stateChange(const CMath::StateChange & change) override;

  // Computes the derivatives (ydot) at time t for state y. Called by
  // CDdeintMethod_dispatch() on whichever instance is active, potentially
  // many times per step() call as the solver tries intermediate/rejected
  // stage values, not just once per accepted step.
  virtual void evalF(double t, std::vector<double> &y, std::vector<double> &ydot,
                      History<double, double> &history);
};

#endif // COPASI_CDdeintMethod