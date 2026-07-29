import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean

structure TransportObservable {α : Type u} (A : AdmissibleClass α) where
  flux : α → ℝ
  entropyProduction : α → ℝ
  fluxBounded : Prop
  entropyProductionNonnegative : Prop

structure TransportClosure {α : Type u} (A : AdmissibleClass α) (T : TransportObservable A) where
  fluxBoundedClosed : T.fluxBounded
  entropyProductionNonnegativeClosed : T.entropyProductionNonnegative

def TransportClosed {α : Type u} {A : AdmissibleClass α} (T : TransportObservable A) : Prop :=
  T.fluxBounded ∧ T.entropyProductionNonnegative

theorem transport_closed_from_evidence {α : Type u} {A : AdmissibleClass α}
  (T : TransportObservable A) (E : TransportClosure A T) : TransportClosed T := by
  exact And.intro E.fluxBoundedClosed E.entropyProductionNonnegativeClosed

end ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean
end HautevilleHouse