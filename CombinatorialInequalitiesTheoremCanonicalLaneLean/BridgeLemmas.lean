import HautevilleHouse.CombinatorialInequalitiesTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace CombinatorialInequalitiesTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CombinatorialInequalityClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CombinatorialInequalitiesTheoremCanonicalLaneLean
end HautevilleHouse