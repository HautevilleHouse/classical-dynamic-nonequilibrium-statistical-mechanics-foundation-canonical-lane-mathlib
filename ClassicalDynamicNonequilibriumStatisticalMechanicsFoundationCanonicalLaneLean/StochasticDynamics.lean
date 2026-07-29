import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean

structure StochasticDynamicsPackage where
  stateSpace : Type u
  generator : Type v
  invariantMeasure : Prop
  detailedBalance : Prop
  ergodicity : Prop
  largeDeviations : Prop

structure StochasticDynamicsEvidence (S : StochasticDynamicsPackage) where
  invariantMeasureClosed : S.invariantMeasure
  detailedBalanceClosed : S.detailedBalance
  ergodicityClosed : S.ergodicity
  largeDeviationsClosed : S.largeDeviations

def StochasticDynamicsClosed (S : StochasticDynamicsPackage) : Prop :=
  S.invariantMeasure ∧ S.detailedBalance ∧ S.ergodicity ∧ S.largeDeviations

theorem stochastic_dynamics_closed_from_evidence (S : StochasticDynamicsPackage) (E : StochasticDynamicsEvidence S) :
    StochasticDynamicsClosed S := by
  exact And.intro E.invariantMeasureClosed (And.intro E.detailedBalanceClosed (And.intro E.ergodicityClosed E.largeDeviationsClosed))

end ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean
end HautevilleHouse