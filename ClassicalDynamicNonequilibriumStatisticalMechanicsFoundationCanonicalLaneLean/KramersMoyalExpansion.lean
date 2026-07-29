import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean

structure KramersMoyal {α : Type u} (A : AdmissibleClass α) where
  drift : α → ℝ
  diffusion : α → ℝ
  expansionConverges : Prop
  expansionConvergesClosed : expansionConverges

def KramersMoyalClosed {α : Type u} {A : AdmissibleClass α} (K : KramersMoyal A) : Prop :=
  K.expansionConverges

theorem kramers_moyal_closed_from_evidence {α : Type u} {A : AdmissibleClass α}
  (K : KramersMoyal A) : KramersMoyalClosed K := by
  exact K.expansionConvergesClosed

end ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean
end HautevilleHouse