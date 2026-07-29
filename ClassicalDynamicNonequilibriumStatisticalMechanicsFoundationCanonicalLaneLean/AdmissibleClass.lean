import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsFoundation

structure AdmissibleNonequilibriumObject where
  stateSpace : Type
  dynamics : Type
  equilibriumMeasure : Prop
  approachToEquilibrium : Prop
  conclusion : Prop

structure AdmissibleClass where
  object : AdmissibleNonequilibriumObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ClassicalDynamicNonequilibriumStatisticalMechanicsFoundation
end HautevilleHouse
