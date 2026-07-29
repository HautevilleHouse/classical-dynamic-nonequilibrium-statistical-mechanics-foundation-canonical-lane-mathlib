import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean

structure EntropyProductionFluctuationTheorem where
  trajectorySpace : Type u
  entropyProduction : trajectorySpace → ℝ
  fluctuationRelation : ∀ (x : trajectorySpace), 
    Prob (entropyProduction = a) / Prob (entropyProduction = -a) = Real.exp (a)
  involutionDefined : Prop

structure EntropyProductionEvidence (E : EntropyProductionFluctuationTheorem) where
  fluctuationRelationClosed : E.fluctuationRelation
  involutionDefinedClosed : E.involutionDefined

def EntropyProductionClosed (E : EntropyProductionFluctuationTheorem) : Prop :=
  E.fluctuationRelation ∧ E.involutionDefined

theorem entropy_production_closed_from_evidence (E : EntropyProductionFluctuationTheorem) (Ev : EntropyProductionEvidence E) : EntropyProductionClosed E := by
  exact And.intro Ev.fluctuationRelationClosed Ev.involutionDefinedClosed

end ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean
end HautevilleHouse