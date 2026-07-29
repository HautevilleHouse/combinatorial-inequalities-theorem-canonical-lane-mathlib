import HautevilleHouse.CombinatorialInequalitiesTheoremCanonicalLaneLean.TheoremStatement
import HautevilleHouse.CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace CombinatorialInequalitiesTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CombinatorialInequalitySpace where
  carrier : Type
  poset : PartialOrder carrier

structure CombinatorialAdmittedObject where
  space : CombinatorialInequalitySpace
  inequalityFormulated : Prop
  extremalCaseCharacterized : Prop
  sharpConstantDetermined : Prop
  conclusion : inequalityFormulated ∧ extremalCaseCharacterized ∧ sharpConstantDetermined

structure CombinatorialEndgameState where
  object : CombinatorialAdmittedObject

def CombinatorialInequalityClosed (O : CombinatorialAdmittedObject) : Prop :=
  O.inequalityFormulated ∧ O.extremalCaseCharacterized ∧ O.sharpConstantDetermined

end CombinatorialInequalitiesTheoremCanonicalLaneLean
end HautevilleHouse