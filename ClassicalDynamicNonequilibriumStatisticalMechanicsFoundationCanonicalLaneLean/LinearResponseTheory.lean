import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean

structure LinearResponsePackage where
  perturbationType : Type u
  responseFunction : Type v
  susceptibility : Type w
  causality : Prop
  kramersKronig : Prop
  fluctuationDissipationSatisfied : Prop

structure LinearResponseEvidence (L : LinearResponsePackage) where
  causalityClosed : L.causality
  kramersKronigClosed : L.kramersKronig
  fluctuationDissipationSatisfiedClosed : L.fluctuationDissipationSatisfied

def LinearResponseClosed (L : LinearResponsePackage) : Prop :=
  L.causality ∧ L.kramersKronig ∧ L.fluctuationDissipationSatisfied

theorem linear_response_closed_from_evidence (L : LinearResponsePackage) (E : LinearResponseEvidence L) :
    LinearResponseClosed L := by
  exact And.intro E.causalityClosed (And.intro E.kramersKronigClosed E.fluctuationDissipationSatisfiedClosed)

end ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean
end HautevilleHouse