// WhitmanOptiLab - DDEINT METHOD -
// Professor: John Stratton
// Contributer: Julio De Jesus
// Date: July 1st, 2026
// College: Whitman College

#ifndef COPASI_CDdeintMethod
#define COPASI_CDdeintMethod

#include <vector>
#include <functional>

#include "copasi/core/CVector.h"
#include "copasi/trajectory/CTrajectoryMethod.h"
#include "copasi/trajectory/CRootFinder.h"

#include "DDEINT/Methods/Dormand_Prince/DoPri_5.hpp"
#include "DDEINT/history/history.hpp"

class CDdeintMethod : public CTrajectoryMethod
{
public:
  struct Data
    {
      C_INT dim;
      CDdeintMethod * pMethod;
    };


  // Attributes
protected:
  // mData.dim is the dimension of the system.
  // mData.pMethod contains CDdeintMethod * this to be used in the static method EvalF
  Data mData;

  // current time
  C_FLOAT64 mTime;

private:
  /*
   * Global tracking pointer to the active object instance.
   * Required because the template solver (DoPri_5) calls a static function 
   * (EvalF) that lacks a 'this' context parameter to access class members.
   */
  static CDdeintMethod * spActiveInstance;

  // A pointer to the value of "Relative Tolerance"
  C_FLOAT64 * mpRelativeTolerance;

  // A pointer to the value of "Absolute Tolerance"
  C_FLOAT64 * mpAbsoluteTolerance;

  // A pointer to the value of "Max Internal Steps"
  unsigned C_INT32 * mpMaxInternalSteps;

  // A pointer to the value of "Max Internal Step Size"
  C_FLOAT64 * mpMaxInternalStepSize;
  
  // A pointer to the first continuous variable state concentration array inside COPASI
  C_FLOAT64 * mpY;

  // A pointer to the beginning of COPASI's calculated derivative rate array
  const C_FLOAT64 * mpYdot;

  // DDEINT Solver and History Setup
  std::vector<double> mInitConds;
  std::vector<double> mMaxDelays;
  std::vector<std::function<double(double)>> mPrehistory;

  // Typedef for our template-instantiated Dormand-Prince method
  typedef DoPri_5<CDdeintMethod::EvalF> DDE_Solver_Type;
  DDE_Solver_Type* mpSolver;

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


  // Evaluated the actual derivtives -- vital for the program

  static void EvalF(double t, std::vector<double> &y, std::vector<double> &ydot, History<double, double> &history);

  // The member function where the actual COPASI container update takes place
  virtual void evalF(double t, std::vector<double> &y, std::vector<double> &ydot);


};

#endif // COPASI_CDdeintMethod