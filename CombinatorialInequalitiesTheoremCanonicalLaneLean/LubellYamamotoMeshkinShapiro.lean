import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialInequalitiesTheoremCanonicalLaneLean

structure LYMPackage where
  groundSet : Set ℕ
  family : Set (Set ℕ)
  chainBound : Prop

structure LYMEvidence (P : LYMPackage) where
  groundSetFinite : Fintype (Set.Pow P.groundSet)
  chainBoundClosed : P.chainBound

def LYMClosed (P : LYMPackage) : Prop :=
  Fintype (Set.Pow P.groundSet) ∧ P.chainBound

theorem lym_closed_from_evidence (P : LYMPackage) (E : LYMEvidence P) : LYMClosed P := by
  exact And.intro E.groundSetFinite E.chainBoundClosed

end CombinatorialInequalitiesTheoremCanonicalLaneLean
end HautevilleHouse