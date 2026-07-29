import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean

structure NonequilibriumEntropyPackage where
  entropyFunctional : Type u
  entropyProduction : Type v
  monotonicity : Prop
  convexity : Prop
  fluctuationTheorem : Prop

structure NonequilibriumEntropyEvidence (E : NonequilibriumEntropyPackage) where
  monotonicityClosed : E.monotonicity
  convexityClosed : E.convexity
  fluctuationTheoremClosed : E.fluctuationTheorem

def NonequilibriumEntropyClosed (E : NonequilibriumEntropyPackage) : Prop :=
  E.monotonicity ∧ E.convexity ∧ E.fluctuationTheorem

theorem nonequilibrium_entropy_closed_from_evidence (E : NonequilibriumEntropyPackage) (Ev : NonequilibriumEntropyEvidence E) :
    NonequilibriumEntropyClosed E := by
  exact And.intro Ev.monotonicityClosed (And.intro Ev.convexityClosed Ev.fluctuationTheoremClosed)

end ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean
end HautevilleHouse