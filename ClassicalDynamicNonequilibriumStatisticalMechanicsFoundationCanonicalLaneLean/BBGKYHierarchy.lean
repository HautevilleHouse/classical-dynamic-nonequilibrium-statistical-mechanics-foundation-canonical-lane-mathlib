import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean

structure BBGKYHierarchyPackage where
  nParticleDistributionFunctionsDefined : Prop
  hamiltonianEvolutionDerived : Prop
  couplingTermIdentified : Prop
  factorizationClosureAssumed : Prop
  reducedDescriptionValid : Prop

structure BBGKYHierarchyEvidence (B : BBGKYHierarchyPackage) where
  nParticleDistributionFunctionsDefinedClosed : B.nParticleDistributionFunctionsDefined
  hamiltonianEvolutionDerivedClosed : B.hamiltonianEvolutionDerived
  couplingTermIdentifiedClosed : B.couplingTermIdentified
  factorizationClosureAssumedClosed : B.factorizationClosureAssumed
  reducedDescriptionValidClosed : B.reducedDescriptionValid

def BBGKYHierarchyClosed (B : BBGKYHierarchyPackage) : Prop :=
  B.nParticleDistributionFunctionsDefined ∧ B.hamiltonianEvolutionDerived ∧
  B.couplingTermIdentified ∧ B.factorizationClosureAssumed ∧
  B.reducedDescriptionValid

theorem bbGKY_hierarchy_closed_from_evidence (B : BBGKYHierarchyPackage)
    (E : BBGKYHierarchyEvidence B) : BBGKYHierarchyClosed B := by
  exact And.intro E.nParticleDistributionFunctionsDefinedClosed
    (And.intro E.hamiltonianEvolutionDerivedClosed
      (And.intro E.couplingTermIdentifiedClosed
        (And.intro E.factorizationClosureAssumedClosed
          E.reducedDescriptionValidClosed)))

end ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean
end HautevilleHouse
