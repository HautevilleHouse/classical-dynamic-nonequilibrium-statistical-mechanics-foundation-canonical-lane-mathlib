import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean

structure TimeCorrelationFunction {α : Type u} (A : AdmissibleClass α) where
  observablePair : α → ℝ × ℝ
  timeLag : ℝ
  correlation : ℝ
  stationarity : Prop
  stationarityClosed : stationarity

def CorrelationClosed {α : Type u} {A : AdmissibleClass α} (C : TimeCorrelationFunction A) : Prop :=
  C.stationarity

theorem correlation_closed_from_evidence {α : Type u} {A : AdmissibleClass α}
  (C : TimeCorrelationFunction A) : CorrelationClosed C := by
  exact C.stationarityClosed

end ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean
end HautevilleHouse