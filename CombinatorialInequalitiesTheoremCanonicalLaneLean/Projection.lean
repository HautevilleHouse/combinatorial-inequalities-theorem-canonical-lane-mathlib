import HautevilleHouse.CombinatorialInequalitiesTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialInequalitiesTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def combinatorialProjection : Projection CombinatorialEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem combinatorial_projection_idempotent (x : CombinatorialEndgameState) :
    combinatorialProjection.toFun (combinatorialProjection.toFun x) = combinatorialProjection.toFun x := by
  exact combinatorialProjection.idempotent x

end CombinatorialInequalitiesTheoremCanonicalLaneLean
end HautevilleHouse