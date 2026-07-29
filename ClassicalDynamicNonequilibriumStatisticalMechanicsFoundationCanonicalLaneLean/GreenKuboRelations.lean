import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean

structure GreenKuboTransportCoefficients where
  observableA : Type u
  observableB : Type v
  currentCorrelation : observableA → observableB → ℝ
  linearResponseCoefficient : ℝ
  onsagerSymmetry : Prop
  fluctuationDissipationTheorem : Prop

structure GreenKuboTransportEvidence (G : GreenKuboTransportCoefficients) where
  onsagerSymmetryClosed : G.onsagerSymmetry
  fluctuationDissipationTheoremClosed : G.fluctuationDissipationTheorem

def GreenKuboTransportClosed (G : GreenKuboTransportCoefficients) : Prop :=
  G.onsagerSymmetry ∧ G.fluctuationDissipationTheorem

theorem green_kubo_transport_closed_from_evidence
    (G : GreenKuboTransportCoefficients) (E : GreenKuboTransportEvidence G) :
    GreenKuboTransportClosed G := by
  exact And.intro E.onsagerSymmetryClosed E.fluctuationDissipationTheoremClosed

end ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean
end HautevilleHouse
