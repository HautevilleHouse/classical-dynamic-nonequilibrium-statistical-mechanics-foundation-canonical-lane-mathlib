import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean

structure MasterEquationPackage where
  transitionRatesDefined : Prop
  probabilityFlowBalance : Prop
  detailedBalanceCondition : Prop
  entropyProductionNonnegative : Prop
  stationarySolutionExists : Prop

structure MasterEquationEvidence (M : MasterEquationPackage) where
  transitionRatesDefinedClosed : M.transitionRatesDefined
  probabilityFlowBalanceClosed : M.probabilityFlowBalance
  detailedBalanceConditionClosed : M.detailedBalanceCondition
  entropyProductionNonnegativeClosed : M.entropyProductionNonnegative
  stationarySolutionExistsClosed : M.stationarySolutionExists

def MasterEquationClosed (M : MasterEquationPackage) : Prop :=
  M.transitionRatesDefined ∧ M.probabilityFlowBalance ∧
  M.detailedBalanceCondition ∧ M.entropyProductionNonnegative ∧
  M.stationarySolutionExists

theorem master_equation_closed_from_evidence (M : MasterEquationPackage)
    (E : MasterEquationEvidence M) : MasterEquationClosed M := by
  exact And.intro E.transitionRatesDefinedClosed
    (And.intro E.probabilityFlowBalanceClosed
      (And.intro E.detailedBalanceConditionClosed
        (And.intro E.entropyProductionNonnegativeClosed
          E.stationarySolutionExistsClosed)))

end ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean
end HautevilleHouse
