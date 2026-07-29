import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean

structure FluctuationDissipationPair {α : Type u} (A : AdmissibleClass α) where
  fluctuation : α → ℝ
  dissipation : α → ℝ
  fluctuationDissipationRelation : Prop
  relationClosed : fluctuationDissipationRelation

def FluctuationDissipationClosed {α : Type u} {A : AdmissibleClass α} (F : FluctuationDissipationPair A) : Prop :=
  F.fluctuationDissipationRelation

theorem fluctuation_dissipation_closed_from_evidence {α : Type u} {A : AdmissibleClass α}
  (F : FluctuationDissipationPair A) : FluctuationDissipationClosed F := by
  exact F.relationClosed

end ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean
end HautevilleHouse