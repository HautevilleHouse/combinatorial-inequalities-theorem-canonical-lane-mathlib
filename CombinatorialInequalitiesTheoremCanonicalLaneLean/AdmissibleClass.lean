import HautevilleHouse.CombinatorialInequalitiesTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CombinatorialInequalitiesTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : CombinatorialAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CombinatorialInequalityClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CombinatorialInequalitiesTheoremCanonicalLaneLean
end HautevilleHouse