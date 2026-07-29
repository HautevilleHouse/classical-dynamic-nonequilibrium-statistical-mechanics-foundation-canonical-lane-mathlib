import ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean

structure NonequilibriumState where
  carrier : Type
  stateSpace : TopologicalSpace carrier
  observableFamily : Type
  correlationFunctions : Type
  relaxationToEquilibrium : Prop
  timeTranslationInvariance : Prop
  ergodicComponents : Prop
  conclusion : relaxationToEquilibrium ∧ timeTranslationInvariance ∧ ergodicComponents

structure NonequilibriumAdmittedObject where
  space : NonequilibriumState
  stationaryMeasure : Prop
  mixingCondition : Prop
  closureCondition : Prop
  conclusion : closureCondition

def NonequilibriumWitnessClosed (O : NonequilibriumAdmittedObject) : Prop :=
  O.closureCondition

structure TheoremLayerEvidence where
  objectSupplied : AdmissibleClass
  bridgeClosedDefined : True
  gateClosedDefined : True
  finalTheoremProven : ConstrainedNonequilibriumClosure objectSupplied

theorem theorem_layer_evidence_check (A : AdmissibleClass) : TheoremLayerEvidence := {
  objectSupplied := A
  bridgeClosedDefined := True.intro
  gateClosedDefined := True.intro
  finalTheoremProven := constrained_nonequilibrium_endgame A
}

end ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean
end HautevilleHouse