import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean

structure NonequilibriumSteadyState where
  stateSpace : Type u
  densityOperator : stateSpace → ℝ
  timeInvariance : ∀ (t : ℝ), densityOperator = densityOperator ∘ (timeShift t)
  detailedBalanceBroken : Prop

structure SteadyStateEvidence (S : NonequilibriumSteadyState) where
  timeInvarianceClosed : S.timeInvariance
  detailedBalanceBrokenClosed : S.detailedBalanceBroken

def SteadyStateClosed (S : NonequilibriumSteadyState) : Prop :=
  S.timeInvariance ∧ S.detailedBalanceBroken

theorem steady_state_closed_from_evidence (S : NonequilibriumSteadyState) (E : SteadyStateEvidence S) : SteadyStateClosed S := by
  exact And.intro E.timeInvarianceClosed E.detailedBalanceBrokenClosed

end ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean
end HautevilleHouse