import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean

structure NonequilibriumPhaseSpace where
  stateSpace : Type u
  timeDomain : Type v
  measure : Type w
  dynamics : stateSpace → timeDomain → stateSpace
  invariantMeasure : Prop
  entropyRate : Prop
  currentFluctuations : Prop

structure NonequilibriumPhaseSpaceEvidence (P : NonequilibriumPhaseSpace) where
  invariantMeasureClosed : P.invariantMeasure
  entropyRateClosed : P.entropyRate
  currentFluctuationsClosed : P.currentFluctuations

def NonequilibriumPhaseSpaceClosed (P : NonequilibriumPhaseSpace) : Prop :=
  P.invariantMeasure ∧ P.entropyRate ∧ P.currentFluctuations

theorem nonequilibrium_phase_space_closed_from_evidence
    (P : NonequilibriumPhaseSpace) (E : NonequilibriumPhaseSpaceEvidence P) :
    NonequilibriumPhaseSpaceClosed P := by
  exact And.intro E.invariantMeasureClosed (And.intro E.entropyRateClosed E.currentFluctuationsClosed)

end ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean
end HautevilleHouse
