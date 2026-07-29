import canonicalLaneMathlib.AdmissibleClass
import ClassicalDynamicNonequilibriumStatisticalMechanicsFoundation.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsFoundation

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ClassicalDynamicNonequilibriumStatisticalMechanicsFoundation
end HautevilleHouse
