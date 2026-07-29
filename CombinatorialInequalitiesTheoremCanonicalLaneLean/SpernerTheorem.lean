import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialInequalitiesTheoremCanonicalLaneLean

structure SpernerTheoremPackage where
  groundSetSize : Nat
  largestAntichainSize : Nat
  spernerBound : Prop
  maximumAntichainDescription : Prop

structure SpernerTheoremEvidence (S : SpernerTheoremPackage) where
  spernerBoundClosed : S.spernerBound
  maximumAntichainDescriptionClosed : S.maximumAntichainDescription

def SpernerTheoremClosed (S : SpernerTheoremPackage) : Prop :=
  S.spernerBound ∧ S.maximumAntichainDescription

theorem sperner_theorem_closed_from_evidence (S : SpernerTheoremPackage) (E : SpernerTheoremEvidence S) :
    SpernerTheoremClosed S := by
  exact And.intro E.spernerBoundClosed E.maximumAntichainDescriptionClosed

end CombinatorialInequalitiesTheoremCanonicalLaneLean
end HautevilleHouse