import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean

structure BoltzmannCollisionIntegral where
  distributionFunction : Type u → Type v
  collisionOperator : (Type u → Type v) → (Type u → Type v)
  detailedBalance : Prop
  conservationLaws : Prop
  entropyProduction : Prop

structure BoltzmannCollisionEvidence (B : BoltzmannCollisionIntegral) where
  detailedBalanceClosed : B.detailedBalance
  conservationLawsClosed : B.conservationLaws
  entropyProductionClosed : B.entropyProduction

def BoltzmannCollisionClosed (B : BoltzmannCollisionIntegral) : Prop :=
  B.detailedBalance ∧ B.conservationLaws ∧ B.entropyProduction

theorem boltzmann_collision_closed_from_evidence
    (B : BoltzmannCollisionIntegral) (E : BoltzmannCollisionEvidence B) :
    BoltzmannCollisionClosed B := by
  exact And.intro E.detailedBalanceClosed (And.intro E.conservationLawsClosed E.entropyProductionClosed)

end ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean
end HautevilleHouse
