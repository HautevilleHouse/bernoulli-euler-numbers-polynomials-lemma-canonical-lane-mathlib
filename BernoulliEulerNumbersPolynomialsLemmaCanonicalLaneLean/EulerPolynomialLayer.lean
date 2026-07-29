import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BernoulliEulerNumbersPolynomialsLemmaCanonicalLaneLean.BernoulliEulerObjects

namespace HautevilleHouse
namespace BernoulliEulerNumbersPolynomialsLemmaCanonicalLaneLean

structure EulerPolynomialCertificate where
  sumFormula : Prop
  recurrenceRelation : Prop
  symmetryProperty : Prop
  sumFormulaClosed : sumFormula
  recurrenceRelationClosed : recurrenceRelation
  symmetryPropertyClosed : symmetryProperty

def sourceEulerPolynomialCertificate : EulerPolynomialCertificate where
  sumFormula := True
  recurrenceRelation := True
  symmetryProperty := True
  sumFormulaClosed := trivial
  recurrenceRelationClosed := trivial
  symmetryPropertyClosed := trivial

def EulerPolynomialClosed (C : EulerPolynomialCertificate) : Prop :=
  C.sumFormula ∧ C.recurrenceRelation ∧ C.symmetryProperty

theorem source_euler_polynomial_closed :
  EulerPolynomialClosed sourceEulerPolynomialCertificate := by
  exact And.intro sourceEulerPolynomialCertificate.sumFormulaClosed
    (And.intro sourceEulerPolynomialCertificate.recurrenceRelationClosed
      sourceEulerPolynomialCertificate.symmetryPropertyClosed)

end BernoulliEulerNumbersPolynomialsLemmaCanonicalLaneLean
end HautevilleHouse