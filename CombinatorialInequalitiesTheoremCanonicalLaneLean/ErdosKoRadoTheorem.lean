import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialInequalitiesTheoremCanonicalLaneLean

structure ErdosKoRadoTheoremPackage where
  universeSize : Nat
  subsetSize : Nat
  intersectingFamilySize : Nat
  ekrBound : Prop
  ekrEqualityCondition : Prop

structure ErdosKoRadoTheoremEvidence (E : ErdosKoRadoTheoremPackage) where
  ekrBoundClosed : E.ekrBound
  ekrEqualityConditionClosed : E.ekrEqualityCondition

def ErdosKoRadoTheoremClosed (E : ErdosKoRadoTheoremPackage) : Prop :=
  E.ekrBound ∧ E.ekrEqualityCondition

theorem erdos_ko_rado_theorem_closed_from_evidence (E : ErdosKoRadoTheoremPackage)
    (Ev : ErdosKoRadoTheoremEvidence E) : ErdosKoRadoTheoremClosed E := by
  exact And.intro Ev.ekrBoundClosed Ev.ekrEqualityConditionClosed

end CombinatorialInequalitiesTheoremCanonicalLaneLean
end HautevilleHouse