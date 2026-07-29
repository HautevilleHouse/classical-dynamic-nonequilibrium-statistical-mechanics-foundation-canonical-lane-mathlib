import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean

structure PhaseSpaceKineticPackage where
  positionMomentumCoordinates : Prop
  poissonBracketDefined : Prop
  liouvilleMeasureInvariant : Prop
  timeEvolutionFlow : Prop
  equilibriumDistributionRecognized : Prop

structure PhaseSpaceKineticEvidence (P : PhaseSpaceKineticPackage) where
  positionMomentumCoordinatesClosed : P.positionMomentumCoordinates
  poissonBracketDefinedClosed : P.poissonBracketDefined
  liouvilleMeasureInvariantClosed : P.liouvilleMeasureInvariant
  timeEvolutionFlowClosed : P.timeEvolutionFlow
  equilibriumDistributionRecognizedClosed : P.equilibriumDistributionRecognized

def PhaseSpaceKineticClosed (P : PhaseSpaceKineticPackage) : Prop :=
  P.positionMomentumCoordinates ∧ P.poissonBracketDefined ∧
  P.liouvilleMeasureInvariant ∧ P.timeEvolutionFlow ∧
  P.equilibriumDistributionRecognized

theorem phase_space_kinetic_closed_from_evidence (P : PhaseSpaceKineticPackage)
    (E : PhaseSpaceKineticEvidence P) : PhaseSpaceKineticClosed P := by
  exact And.intro E.positionMomentumCoordinatesClosed
    (And.intro E.poissonBracketDefinedClosed
      (And.intro E.liouvilleMeasureInvariantClosed
        (And.intro E.timeEvolutionFlowClosed
          E.equilibriumDistributionRecognizedClosed)))

end ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean
end HautevilleHouse
