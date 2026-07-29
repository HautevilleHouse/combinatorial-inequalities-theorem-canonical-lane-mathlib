import CombinatorialInequalitiesTheoremCanonicalLaneLean.SubmodularInequality

/-!
# Lubell-Yamamoto-Meshalkin (LYM) Inequality Package
-/

namespace HautevilleHouse
namespace CombinatorialInequalitiesTheoremCanonicalLaneLean

structure LYMInequalityPackage where
  groundSet : Type u
  antichain : Set (Set (groundSet))
  lymInequality : Prop
  rankBound : Prop

structure LYMInequalityEvidence (L : LYMInequalityPackage) where
  lymInequalityClosed : L.lymInequality
  rankBoundClosed : L.rankBound

def LYMInequalityClosed (L : LYMInequalityPackage) : Prop :=
  L.lymInequality ∧ L.rankBound

theorem lym_inequality_closed_from_evidence (L : LYMInequalityPackage) 
    (E : LYMInequalityEvidence L) : LYMInequalityClosed L := by
  exact And.intro E.lymInequalityClosed E.rankBoundClosed

end CombinatorialInequalitiesTheoremCanonicalLaneLean
end HautevilleHouse