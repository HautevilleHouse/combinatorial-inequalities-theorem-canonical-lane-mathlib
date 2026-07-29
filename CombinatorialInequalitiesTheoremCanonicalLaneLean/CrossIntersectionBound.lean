import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialInequalitiesTheoremCanonicalLaneLean

structure CrossIntersectionBoundPackage where
  leftFamily : Set (Set ℕ)
  rightFamily : Set (Set ℕ)
  leftSize : Nat
  rightSize : Nat
  intersectBound : Prop

structure CrossIntersectionBoundEvidence (P : CrossIntersectionBoundPackage) where
  leftFamilyNonempty : P.leftFamily.Nonempty
  rightFamilyNonempty : P.rightFamily.Nonempty
  intersectBoundClosed : P.intersectBound

def CrossIntersectionBoundClosed (P : CrossIntersectionBoundPackage) : Prop :=
  P.leftFamily.Nonempty ∧ P.rightFamily.Nonempty ∧ P.intersectBound

theorem cross_intersection_bound_closed_from_evidence (P : CrossIntersectionBoundPackage) (E : CrossIntersectionBoundEvidence P) : CrossIntersectionBoundClosed P := by
  exact And.intro E.leftFamilyNonempty (And.intro E.rightFamilyNonempty E.intersectBoundClosed)

end CombinatorialInequalitiesTheoremCanonicalLaneLean
end HautevilleHouse