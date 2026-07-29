import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsFoundation

structure ErgodicityBreakingPackage where
  ergodicComponents : Prop
  measurePreservingFlow : Prop
  breakingCondition : Prop

structure ErgodicityBreakingEvidence (E : ErgodicityBreakingPackage) where
  ergodicComponentsClosed : E.ergodicComponents
  measurePreservingFlowClosed : E.measurePreservingFlow
  breakingConditionClosed : E.breakingCondition

def ErgodicityBreakingClosed (E : ErgodicityBreakingPackage) : Prop :=
  E.ergodicComponents ∧ E.measurePreservingFlow ∧ E.breakingCondition

theorem ergodicity_breaking_closed_from_evidence (E : ErgodicityBreakingPackage) (Ev : ErgodicityBreakingEvidence E) :
    ErgodicityBreakingClosed E := by
  exact And.intro Ev.ergodicComponentsClosed (And.intro Ev.measurePreservingFlowClosed Ev.breakingConditionClosed)

end ClassicalDynamicNonequilibriumStatisticalMechanicsFoundation
end HautevilleHouse
