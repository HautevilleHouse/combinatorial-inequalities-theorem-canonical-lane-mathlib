import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialInequalitiesTheoremCanonicalLaneLean

structure SpernerBoundPackage where
  groundSet : Set ℕ
  antichain : Set (Set ℕ)
  maxSize : Nat
  sizeBound : Prop

structure SpernerBoundEvidence (P : SpernerBoundPackage) where
  antichainNonempty : P.antichain.Nonempty
  sizeBoundClosed : P.sizeBound

def SpernerBoundClosed (P : SpernerBoundPackage) : Prop :=
  P.antichain.Nonempty ∧ P.sizeBound

theorem sperner_bound_closed_from_evidence (P : SpernerBoundPackage) (E : SpernerBoundEvidence P) : SpernerBoundClosed P := by
  exact And.intro E.antichainNonempty E.sizeBoundClosed

end CombinatorialInequalitiesTheoremCanonicalLaneLean
end HautevilleHouse