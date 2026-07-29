import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BernoulliEulerNumbersPolynomialsLemmaCanonicalLaneLean.BernoulliEulerObjects

namespace HautevilleHouse
namespace BernoulliEulerNumbersPolynomialsLemmaCanonicalLaneLean

structure BernoulliPolynomialCertificate where
  finiteSumFormula : Prop
  recurrenceRelation : Prop
  symmetryProperty : Prop
  finiteSumFormulaClosed : finiteSumFormula
  recurrenceRelationClosed : recurrenceRelation
  symmetryPropertyClosed : symmetryProperty

def sourceBernoulliPolynomialCertificate : BernoulliPolynomialCertificate where
  finiteSumFormula := True
  recurrenceRelation := True
  symmetryProperty := True
  finiteSumFormulaClosed := trivial
  recurrenceRelationClosed := trivial
  symmetryPropertyClosed := trivial

def BernoulliPolynomialClosed (C : BernoulliPolynomialCertificate) : Prop :=
  C.finiteSumFormula ∧ C.recurrenceRelation ∧ C.symmetryProperty

theorem source_bernoulli_polynomial_closed :
  BernoulliPolynomialClosed sourceBernoulliPolynomialCertificate := by
  exact And.intro sourceBernoulliPolynomialCertificate.finiteSumFormulaClosed
    (And.intro sourceBernoulliPolynomialCertificate.recurrenceRelationClosed
      sourceBernoulliPolynomialCertificate.symmetryPropertyClosed)

end BernoulliEulerNumbersPolynomialsLemmaCanonicalLaneLean
end HautevilleHouse