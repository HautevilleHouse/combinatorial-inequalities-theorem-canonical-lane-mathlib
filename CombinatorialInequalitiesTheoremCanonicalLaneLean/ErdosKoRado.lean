import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialInequalitiesTheoremCanonicalLaneLean

structure ErdosKoRadoPackage where
  groundSet : Type u
  familyOfSubsets : Set (Set groundSet)
  intersectingProperty : Prop
  uniformSize : ℕ
  maximumSize : ℕ → Prop
  inequalityClosed : Prop

def ErdosKoRadoClosed (E : ErdosKoRadoPackage) : Prop :=
  E.inequalityClosed

structure ErdosKoRadoEvidence (E : ErdosKoRadoPackage) where
  inequalityClosedTerm : E.inequalityClosed

theorem erdos_ko_rado_closed_from_evidence (E : ErdosKoRadoPackage) (Ev : ErdosKoRadoEvidence E) :
    ErdosKoRadoClosed E := by
  exact Ev.inequalityClosedTerm

end CombinatorialInequalitiesTheoremCanonicalLaneLean
end HautevilleHouse