import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialInequalitiesTheoremCanonicalLaneLean

structure LubellYamamotoMeshkinInequalityPackage where
  posetWidth : Type
  chainDecomposition : Type
  lymInequality : Prop
  chainCountBound : Prop
  symmetricChainDecomposition : Prop

structure LubellYamamotoMeshkinInequalityEvidence (L : LubellYamamotoMeshkinInequalityPackage) where
  lymInequalityClosed : L.lymInequality
  chainCountBoundClosed : L.chainCountBound
  symmetricChainDecompositionClosed : L.symmetricChainDecomposition

def LubellYamamotoMeshkinInequalityClosed (L : LubellYamamotoMeshkinInequalityPackage) : Prop :=
  L.lymInequality ∧ L.chainCountBound ∧ L.symmetricChainDecomposition

theorem lubell_yamamoto_meshkin_inequality_closed_from_evidence
    (L : LubellYamamotoMeshkinInequalityPackage)
    (E : LubellYamamotoMeshkinInequalityEvidence L) :
    LubellYamamotoMeshkinInequalityClosed L := by
  exact And.intro E.lymInequalityClosed
    (And.intro E.chainCountBoundClosed E.symmetricChainDecompositionClosed)

end CombinatorialInequalitiesTheoremCanonicalLaneLean
end HautevilleHouse