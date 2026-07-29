import CombinatorialInequalitiesTheoremCanonicalLaneLean.FranklWilson

/-!
# Kruskal-Katona Theorem Package
-/

namespace HautevilleHouse
namespace CombinatorialInequalitiesTheoremCanonicalLaneLean

structure KruskalKatonaPackage where
  groundSet : Type u
  shadowMap : Set (ℕ) → Set (ℕ)
  kruskalKatonaInequality : Prop
  shadowMinimalFamily : Prop

structure KruskalKatonaEvidence (K : KruskalKatonaPackage) where
  kruskalKatonaInequalityClosed : K.kruskalKatonaInequality
  shadowMinimalFamilyClosed : K.shadowMinimalFamily

def KruskalKatonaClosed (K : KruskalKatonaPackage) : Prop :=
  K.kruskalKatonaInequality ∧ K.shadowMinimalFamily

theorem kruskal_katona_closed_from_evidence (K : KruskalKatonaPackage)
    (E : KruskalKatonaEvidence K) : KruskalKatonaClosed K := by
  exact And.intro E.kruskalKatonaInequalityClosed E.shadowMinimalFamilyClosed

end CombinatorialInequalitiesTheoremCanonicalLaneLean
end HautevilleHouse