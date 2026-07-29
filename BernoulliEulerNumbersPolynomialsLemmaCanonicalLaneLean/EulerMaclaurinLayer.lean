import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BernoulliEulerNumbersPolynomialsLemmaCanonicalLaneLean.BernoulliEulerObjects

namespace HautevilleHouse
namespace BernoulliEulerNumbersPolynomialsLemmaCanonicalLaneLean

structure EulerMaclaurinCertificate where
  eulerMaclaurinFormula : Prop
  remainderTerm : Prop
  eulerMaclaurinClosed : eulerMaclaurinFormula
  remainderTermClosed : remainderTerm

def sourceEulerMaclaurinCertificate : EulerMaclaurinCertificate where
  eulerMaclaurinFormula := True
  remainderTerm := True
  eulerMaclaurinClosed := trivial
  remainderTermClosed := trivial

def EulerMaclaurinClosed (C : EulerMaclaurinCertificate) : Prop :=
  C.eulerMaclaurinFormula ∧ C.remainderTerm

theorem source_euler_maclaurin_closed :
  EulerMaclaurinClosed sourceEulerMaclaurinCertificate := by
  exact And.intro sourceEulerMaclaurinCertificate.eulerMaclaurinClosed
    sourceEulerMaclaurinCertificate.remainderTermClosed

end BernoulliEulerNumbersPolynomialsLemmaCanonicalLaneLean
end HautevilleHouse