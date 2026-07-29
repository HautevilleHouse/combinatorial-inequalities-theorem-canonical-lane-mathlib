import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialInequalitiesTheoremCanonicalLaneLean

structure KleitmanTheoremPackage where
  groundSetSize : Nat
  fixedSizeFamilies : List (Nat → Prop)
  unionIntersectionBound : Prop
  kleitmanInequality : Prop

structure KleitmanTheoremEvidence (K : KleitmanTheoremPackage) where
  unionIntersectionBoundClosed : K.unionIntersectionBound
  kleitmanInequalityClosed : K.kleitmanInequality

def KleitmanTheoremClosed (K : KleitmanTheoremPackage) : Prop :=
  K.unionIntersectionBound ∧ K.kleitmanInequality

theorem kleitman_theorem_closed_from_evidence (K : KleitmanTheoremPackage) (E : KleitmanTheoremEvidence K) :
    KleitmanTheoremClosed K := by
  exact And.intro E.unionIntersectionBoundClosed E.kleitmanInequalityClosed

end CombinatorialInequalitiesTheoremCanonicalLaneLean
end HautevilleHouse