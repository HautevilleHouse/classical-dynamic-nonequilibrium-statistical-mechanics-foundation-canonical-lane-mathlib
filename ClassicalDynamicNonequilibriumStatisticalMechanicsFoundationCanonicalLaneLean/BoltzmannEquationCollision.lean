import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean

structure BoltzmannCollisionOperator where
  phaseSpace : Type u
  collisionKernel : phaseSpace → phaseSpace → ℝ
  gainTerm : phaseSpace → ℝ
  lossTerm : phaseSpace → ℝ
  collisionEquation : ∀ (x : phaseSpace), gainTerm x - lossTerm x = 0

structure BoltzmannCollisionEvidence (B : BoltzmannCollisionOperator) where
  collisionEquationClosed : B.collisionEquation

def BoltzmannCollisionClosed (B : BoltzmannCollisionOperator) : Prop :=
  B.collisionEquation

theorem boltzmann_collision_closed_from_evidence (B : BoltzmannCollisionOperator) (E : BoltzmannCollisionEvidence B) : BoltzmannCollisionClosed B := by
  exact E.collisionEquationClosed

end ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean
end HautevilleHouse