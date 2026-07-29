import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BernoulliEulerNumbersPolynomialsLemmaCanonicalLaneLean

structure TheoremSpecificObject where
  sourceKey : String
  theoremObject : String
  claimBoundary : String
deriving Repr, DecidableEq

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  bernoulliEulerPolynomialClosed : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceRepository : String := "BernoulliEulerNumbersPolynomialsLemmaCanonicalLane"
def sourceDescription : String := "Bernoulli Euler Numbers Polynomials Lemma"

def theoremSpecificObject : TheoremSpecificObject := {
  sourceKey := sourceRepository,
  theoremObject := sourceDescription,
  claimBoundary := "Bernoulli-Euler polynomials lemma with classical boundary"
}

def sourceTheoremBoundary : TheoremStatement := {
  sourceKey := sourceRepository,
  theoremName := sourceRepository,
  theoremObject := sourceDescription,
  classicalBoundary := "Classical boundary carried",
  bernoulliEulerPolynomialClosed := "Bernoulli-Euler polynomial closure via admissible class",
  certificateLane := "manifold_constrained",
  carriedRemainder := "carried classical remainder"
}

end BernoulliEulerNumbersPolynomialsLemmaCanonicalLaneLean
end HautevilleHouse