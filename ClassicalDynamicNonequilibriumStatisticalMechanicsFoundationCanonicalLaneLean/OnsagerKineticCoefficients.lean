import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsFoundation

structure OnsagerKineticCoefficientsPackage where
  fluxVector : Type
  affinityVector : Type
  coeffMatrix : Type
  reciprocalRelations : Prop
  positivity : Prop
  entropyProduction : Prop

structure OnsagerKineticCoefficientsEvidence (O : OnsagerKineticCoefficientsPackage) where
  reciprocalRelationsClosed : O.reciprocalRelations
  positivityClosed : O.positivity
  entropyProductionClosed : O.entropyProduction

def OnsagerKineticCoefficientsClosed (O : OnsagerKineticCoefficientsPackage) : Prop :=
  O.reciprocalRelations ∧ O.positivity ∧ O.entropyProduction

theorem onsager_kinetic_coefficients_closed_from_evidence (O : OnsagerKineticCoefficientsPackage) (Ev : OnsagerKineticCoefficientsEvidence O) :
    OnsagerKineticCoefficientsClosed O := by
  exact And.intro Ev.reciprocalRelationsClosed (And.intro Ev.positivityClosed Ev.entropyProductionClosed)

end ClassicalDynamicNonequilibriumStatisticalMechanicsFoundation
end HautevilleHouse
