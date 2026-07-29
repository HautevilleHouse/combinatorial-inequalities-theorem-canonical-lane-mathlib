import CombinatorialInequalitiesTheoremCanonicalLaneLean.AdmissibleClass

/-!
# Rank Function Package
-/

namespace HautevilleHouse
namespace CombinatorialInequalitiesTheoremCanonicalLaneLean

structure RankFunctionPackage where
  groundSet : Type u
  rank : Set (groundSet) → ℕ
  rankZeroEmpty : rank ∅ = 0
  monotonicity : ∀ A B, A ⊆ B → rank A ≤ rank B
  submodularity : ∀ A B, rank (A ∪ B) + rank (A ∩ B) ≤ rank A + rank B

structure RankFunctionEvidence (R : RankFunctionPackage) where
  rankZeroEmptyClosed : R.rankZeroEmpty
  monotonicityClosed : R.monotonicity
  submodularityClosed : R.submodularity

def RankFunctionClosed (R : RankFunctionPackage) : Prop :=
  R.rankZeroEmpty ∧ R.monotonicity ∧ R.submodularity

theorem rank_function_closed_from_evidence (R : RankFunctionPackage) 
    (E : RankFunctionEvidence R) : RankFunctionClosed R := by
  exact And.intro E.rankZeroEmptyClosed
    (And.intro E.monotonicityClosed E.submodularityClosed)

end CombinatorialInequalitiesTheoremCanonicalLaneLean
end HautevilleHouse