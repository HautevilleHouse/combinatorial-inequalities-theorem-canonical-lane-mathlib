import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialInequalitiesTheoremCanonicalLaneLean

structure DilworthTheoremPackage where
  poset : Type
  width : Nat
  minimumChainCover : Nat
  dilworthEquality : Prop
  dilworthBound : Prop

structure DilworthTheoremEvidence (D : DilworthTheoremPackage) where
  dilworthEqualityClosed : D.dilworthEquality
  dilworthBoundClosed : D.dilworthBound

def DilworthTheoremClosed (D : DilworthTheoremPackage) : Prop :=
  D.dilworthEquality ∧ D.dilworthBound

theorem dilworth_theorem_closed_from_evidence (D : DilworthTheoremPackage) (E : DilworthTheoremEvidence D) :
    DilworthTheoremClosed D := by
  exact And.intro E.dilworthEqualityClosed E.dilworthBoundClosed

end CombinatorialInequalitiesTheoremCanonicalLaneLean
end HautevilleHouse