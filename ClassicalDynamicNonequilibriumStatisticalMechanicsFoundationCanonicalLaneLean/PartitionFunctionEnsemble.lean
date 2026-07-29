import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean

structure PartitionFunctionEnsemble where
  microstates : Type u
  microstateEnergy : microstates → ℝ
  partitionFunctionReal : ℝ
  partitionFunctionDefined : partitionFunctionReal = ∑' (s : microstates), Real.exp (-microstateEnergy s)
  partitionFunctionFinite : partitionFunctionReal < ∞

structure PartitionFunctionEvidence (M : PartitionFunctionEnsemble) where
  partitionFunctionDefinedClosed : M.partitionFunctionDefined
  partitionFunctionFiniteClosed : M.partitionFunctionFinite

def PartitionFunctionClosed (M : PartitionFunctionEnsemble) : Prop :=
  M.partitionFunctionDefined ∧ M.partitionFunctionFinite

theorem partition_function_closed_from_evidence (M : PartitionFunctionEnsemble) (E : PartitionFunctionEvidence M) : PartitionFunctionClosed M := by
  exact And.intro E.partitionFunctionDefinedClosed E.partitionFunctionFiniteClosed

end ClassicalDynamicNonequilibriumStatisticalMechanicsFoundationCanonicalLaneLean
end HautevilleHouse