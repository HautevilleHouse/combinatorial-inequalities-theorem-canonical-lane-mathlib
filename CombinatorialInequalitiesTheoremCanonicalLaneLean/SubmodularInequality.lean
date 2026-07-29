import CombinatorialInequalitiesTheoremCanonicalLaneLean.RankFunction

/-!
# Submodular Inequality Package
-/

namespace HautevilleHouse
namespace CombinatorialInequalitiesTheoremCanonicalLaneLean

structure SubmodularInequalityPackage {R : RankFunctionPackage} where
  submodularFunction : Set (R.groundSet) → ℕ
  submodularityInequality : ∀ A B, submodularFunction (A ∪ B) + submodularFunction (A ∩ B) ≤ submodularFunction A + submodularFunction B
  relationToRank : Prop

structure SubmodularInequalityEvidence {R : RankFunctionPackage} 
    (S : SubmodularInequalityPackage R) where
  submodularityInequalityClosed : S.submodularityInequality
  relationToRankClosed : S.relationToRank

def SubmodularInequalityClosed {R : RankFunctionPackage} 
    (S : SubmodularInequalityPackage R) : Prop :=
  S.submodularityInequality ∧ S.relationToRank

theorem submodular_inequality_closed_from_evidence {R : RankFunctionPackage}
    (S : SubmodularInequalityPackage R) (E : SubmodularInequalityEvidence S) :
    SubmodularInequalityClosed S := by
  exact And.intro E.submodularityInequalityClosed E.relationToRankClosed

end CombinatorialInequalitiesTheoremCanonicalLaneLean
end HautevilleHouse