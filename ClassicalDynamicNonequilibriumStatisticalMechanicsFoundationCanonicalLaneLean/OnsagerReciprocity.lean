import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean

structure OnsagerReciprocityPackage where
  systemType : Type u
  fluxes : Type v
  forces : Type w
  transportMatrix : Type x
  symmetryRelation : Prop
  fluctuationDissipation : Prop
  reciprocityRelation : Prop

structure OnsagerReciprocityEvidence (O : OnsagerReciprocityPackage) where
  symmetryRelationClosed : O.symmetryRelation
  fluctuationDissipationClosed : O.fluctuationDissipation
  reciprocityRelationClosed : O.reciprocityRelation

def OnsagerReciprocityClosed (O : OnsagerReciprocityPackage) : Prop :=
  O.symmetryRelation ∧ O.fluctuationDissipation ∧ O.reciprocityRelation

theorem onsager_reciprocity_closed_from_evidence (O : OnsagerReciprocityPackage) (E : OnsagerReciprocityEvidence O) :
    OnsagerReciprocityClosed O := by
  exact And.intro E.symmetryRelationClosed (And.intro E.fluctuationDissipationClosed E.reciprocityRelationClosed)

end ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean
end HautevilleHouse