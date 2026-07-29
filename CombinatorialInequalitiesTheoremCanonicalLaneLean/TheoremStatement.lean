import HautevilleHouse.CombinatorialInequalitiesTheoremCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace CombinatorialInequalitiesTheoremCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  inequalityConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "combinatorial-inequalities",
  theoremName := "Combinatorial Inequalities Theorem",
  theoremObject := "Fundamental combinatorial inequality chain",
  classicalBoundary := "unrestricted inequality comparison",
  inequalityConstrainedStatement := "manifold-constrained inequality closure",
  certificateLane := "inequality_constrained",
  carriedRemainder := "none"
}

end CombinatorialInequalitiesTheoremCanonicalLaneLean
end HautevilleHouse
