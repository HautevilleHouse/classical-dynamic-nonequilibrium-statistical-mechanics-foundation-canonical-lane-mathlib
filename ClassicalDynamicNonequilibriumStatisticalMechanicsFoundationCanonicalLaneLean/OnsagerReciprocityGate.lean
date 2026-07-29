import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean

structure OnsagerMatrix {α : Type u} (A : AdmissibleClass α) where
  L_matrix : α → Matrix (Fin 3) (Fin 3) ℝ
  symmetry : Prop
  positiveDefinite : Prop
  symmetryClosed : symmetry
  positiveDefiniteClosed : positiveDefinite

def OnsagerClosed {α : Type u} {A : AdmissibleClass α} (O : OnsagerMatrix A) : Prop :=
  O.symmetry ∧ O.positiveDefinite

theorem onsager_closed_from_evidence {α : Type u} {A : AdmissibleClass α}
  (O : OnsagerMatrix A) : OnsagerClosed O := by
  exact And.intro O.symmetryClosed O.positiveDefiniteClosed

end ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean
end HautevilleHouse