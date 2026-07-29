import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean

structure LinearResponseKuboFormula where
  perturbation : Type u
  observable : Type v
  responseFunction : perturbation → observable → ℝ
  equilibriumAverage : observable → ℝ
  fluctuationDissipation : Prop

structure LinearResponseEvidence (L : LinearResponseKuboFormula) where
  fluctuationDissipationClosed : L.fluctuationDissipation

def LinearResponseClosed (L : LinearResponseKuboFormula) : Prop :=
  L.fluctuationDissipation

theorem linear_response_closed_from_evidence (L : LinearResponseKuboFormula) (E : LinearResponseEvidence L) : LinearResponseClosed L := by
  exact E.fluctuationDissipationClosed

end ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean
end HautevilleHouse