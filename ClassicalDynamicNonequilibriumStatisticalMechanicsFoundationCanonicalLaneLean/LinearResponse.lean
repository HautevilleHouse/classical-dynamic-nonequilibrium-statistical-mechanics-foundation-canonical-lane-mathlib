import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean

structure LinearResponsePackage where
  perturbationHamiltonianDefined : Prop
  linearResponseKuboFormula : Prop
  susceptibilityFunction : Prop
  causalityConditionKramersKronig : Prop
  staticResponseRelation : Prop

structure LinearResponseEvidence (L : LinearResponsePackage) where
  perturbationHamiltonianDefinedClosed : L.perturbationHamiltonianDefined
  linearResponseKuboFormulaClosed : L.linearResponseKuboFormula
  susceptibilityFunctionClosed : L.susceptibilityFunction
  causalityConditionKramersKronigClosed : L.causalityConditionKramersKronig
  staticResponseRelationClosed : L.staticResponseRelation

def LinearResponseClosed (L : LinearResponsePackage) : Prop :=
  L.perturbationHamiltonianDefined ∧ L.linearResponseKuboFormula ∧
  L.susceptibilityFunction ∧ L.causalityConditionKramersKronig ∧
  L.staticResponseRelation

theorem linear_response_closed_from_evidence (L : LinearResponsePackage)
    (E : LinearResponseEvidence L) : LinearResponseClosed L := by
  exact And.intro E.perturbationHamiltonianDefinedClosed
    (And.intro E.linearResponseKuboFormulaClosed
      (And.intro E.susceptibilityFunctionClosed
        (And.intro E.causalityConditionKramersKronigClosed
          E.staticResponseRelationClosed)))

end ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean
end HautevilleHouse
