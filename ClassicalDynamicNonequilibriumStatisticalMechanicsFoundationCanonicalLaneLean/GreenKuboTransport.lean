import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean

structure GreenKuboTransportCoefficient where
  fluxOperator : Type u
  timeCorrelationFunction : ℝ → ℝ
  transportCoefficient : ℝ
  kuboIntegral : transportCoefficient = ∫ (t : ℝ), timeCorrelationFunction t
  integralConverges : Prop

structure GreenKuboEvidence (G : GreenKuboTransportCoefficient) where
  kuboIntegralClosed : G.kuboIntegral
  integralConvergesClosed : G.integralConverges

def GreenKuboClosed (G : GreenKuboTransportCoefficient) : Prop :=
  G.kuboIntegral ∧ G.integralConverges

theorem green_kubo_closed_from_evidence (G : GreenKuboTransportCoefficient) (E : GreenKuboEvidence G) : GreenKuboClosed G := by
  exact And.intro E.kuboIntegralClosed E.integralConvergesClosed

end ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean
end HautevilleHouse