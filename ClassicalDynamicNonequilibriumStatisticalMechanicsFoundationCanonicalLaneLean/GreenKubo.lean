import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean

structure GreenKuboPackage where
  currentCorrelationFunctionDefined : Prop
  linearResponseFormula : Prop
  transportCoefficientExpression : Prop
  fluctuationDissipationTheorem : Prop
  integralConvergence : Prop

structure GreenKuboEvidence (G : GreenKuboPackage) where
  currentCorrelationFunctionDefinedClosed : G.currentCorrelationFunctionDefined
  linearResponseFormulaClosed : G.linearResponseFormula
  transportCoefficientExpressionClosed : G.transportCoefficientExpression
  fluctuationDissipationTheoremClosed : G.fluctuationDissipationTheorem
  integralConvergenceClosed : G.integralConvergence

def GreenKuboClosed (G : GreenKuboPackage) : Prop :=
  G.currentCorrelationFunctionDefined ∧ G.linearResponseFormula ∧
  G.transportCoefficientExpression ∧ G.fluctuationDissipationTheorem ∧
  G.integralConvergence

theorem green_kubo_closed_from_evidence (G : GreenKuboPackage)
    (E : GreenKuboEvidence G) : GreenKuboClosed G := by
  exact And.intro E.currentCorrelationFunctionDefinedClosed
    (And.intro E.linearResponseFormulaClosed
      (And.intro E.transportCoefficientExpressionClosed
        (And.intro E.fluctuationDissipationTheoremClosed
          E.integralConvergenceClosed)))

end ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean
end HautevilleHouse
