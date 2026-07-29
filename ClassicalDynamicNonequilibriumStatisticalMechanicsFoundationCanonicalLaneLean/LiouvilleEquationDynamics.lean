import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean

structure LiouvilleDensityEvolution where
  phaseSpace : Type u
  hamiltonian : phaseSpace → ℝ
  densityFunction : ℝ → phaseSpace → ℝ
  liouvilleEquation : ∀ (t : ℝ), ∀ (x : phaseSpace), 
    (deriv (fun s => densityFunction s x) t) + 
    (poissonBracket (densityFunction t) hamiltonian x) = 0
  poissonBracketDefined : Prop

structure LiouvilleEvidence (L : LiouvilleDensityEvolution) where
  liouvilleEquationClosed : L.liouvilleEquation
  poissonBracketDefinedClosed : L.poissonBracketDefined

def LiouvilleClosed (L : LiouvilleDensityEvolution) : Prop :=
  L.liouvilleEquation ∧ L.poissonBracketDefined

theorem liouville_closed_from_evidence (L : LiouvilleDensityEvolution) (E : LiouvilleEvidence L) : LiouvilleClosed L := by
  exact And.intro E.liouvilleEquationClosed E.poissonBracketDefinedClosed

end ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean
end HautevilleHouse