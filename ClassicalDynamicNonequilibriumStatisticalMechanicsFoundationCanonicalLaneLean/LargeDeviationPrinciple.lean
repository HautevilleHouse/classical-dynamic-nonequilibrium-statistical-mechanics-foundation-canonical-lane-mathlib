import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean

structure LargeDeviationPrinciple where
  pathSpace : Type u
  rateFunctional : pathSpace → ℝ
  lowerBound : Prop
  upperBound : Prop
  contractionPrinciple : Prop

structure LargeDeviationEvidence (L : LargeDeviationPrinciple) where
  lowerBoundClosed : L.lowerBound
  upperBoundClosed : L.upperBound
  contractionPrincipleClosed : L.contractionPrinciple

def LargeDeviationClosed (L : LargeDeviationPrinciple) : Prop :=
  L.lowerBound ∧ L.upperBound ∧ L.contractionPrinciple

theorem large_deviation_closed_from_evidence
    (L : LargeDeviationPrinciple) (E : LargeDeviationEvidence L) :
    LargeDeviationClosed L := by
  exact And.intro E.lowerBoundClosed (And.intro E.upperBoundClosed E.contractionPrincipleClosed)

end ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean
end HautevilleHouse
