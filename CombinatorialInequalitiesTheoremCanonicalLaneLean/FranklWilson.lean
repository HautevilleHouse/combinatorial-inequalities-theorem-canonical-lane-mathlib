import CombinatorialInequalitiesTheoremCanonicalLaneLean.LubellYamamotoMeshalkin

/-!
# Frankl-Wilson Inequality Package
-/

namespace HautevilleHouse
namespace CombinatorialInequalitiesTheoremCanonicalLaneLean

structure FranklWilsonInequalityPackage where
  groundSet : Type u
  intersectingFamily : Set (Set (groundSet))
  franklWilsonInequality : Prop
  maximalSize : ℕ

structure FranklWilsonInequalityEvidence (F : FranklWilsonInequalityPackage) where
  franklWilsonInequalityClosed : F.franklWilsonInequality
  maximalSizeClosed : F.maximalSize = 1

def FranklWilsonInequalityClosed (F : FranklWilsonInequalityPackage) : Prop :=
  F.franklWilsonInequality ∧ F.maximalSize = 1

theorem frankl_wilson_inequality_closed_from_evidence (F : FranklWilsonInequalityPackage)
    (E : FranklWilsonInequalityEvidence F) : FranklWilsonInequalityClosed F := by
  exact And.intro E.franklWilsonInequalityClosed E.maximalSizeClosed

end CombinatorialInequalitiesTheoremCanonicalLaneLean
end HautevilleHouse