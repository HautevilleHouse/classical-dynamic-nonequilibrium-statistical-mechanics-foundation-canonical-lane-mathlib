import ClassicalDynamicNonequilibriumStatisticalMechanicsFoundation.GateLemmas

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsFoundation

def ConstrainedNonequilibriumClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_nonequilibrium_endgame (A : AdmissibleClass) :
    ConstrainedNonequilibriumClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClassicalDynamicNonequilibriumStatisticalMechanicsFoundation
end HautevilleHouse
