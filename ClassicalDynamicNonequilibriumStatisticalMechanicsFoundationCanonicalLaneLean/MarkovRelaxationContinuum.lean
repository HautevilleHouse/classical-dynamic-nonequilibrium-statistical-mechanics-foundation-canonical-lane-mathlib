import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsFoundation

structure MarkovRelaxationContinuumPackage where
  stateSpace : Type
  transitionKernel : Type
  generator : Type
  detailedBalance : Prop
  relaxationRate : Prop
  continuumLimit : Prop

structure MarkovRelaxationContinuumEvidence (M : MarkovRelaxationContinuumPackage) where
  detailedBalanceClosed : M.detailedBalance
  relaxationRateClosed : M.relaxationRate
  continuumLimitClosed : M.continuumLimit

def MarkovRelaxationContinuumClosed (M : MarkovRelaxationContinuumPackage) : Prop :=
  M.detailedBalance ∧ M.relaxationRate ∧ M.continuumLimit

theorem markov_relaxation_continuum_closed_from_evidence (M : MarkovRelaxationContinuumPackage) (Ev : MarkovRelaxationContinuumEvidence M) :
    MarkovRelaxationContinuumClosed M := by
  exact And.intro Ev.detailedBalanceClosed (And.intro Ev.relaxationRateClosed Ev.continuumLimitClosed)

end ClassicalDynamicNonequilibriumStatisticalMechanicsFoundation
end HautevilleHouse
