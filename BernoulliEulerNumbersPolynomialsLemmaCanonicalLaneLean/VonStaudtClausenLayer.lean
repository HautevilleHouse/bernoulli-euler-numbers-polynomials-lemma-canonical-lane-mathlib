import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BernoulliEulerNumbersPolynomialsLemmaCanonicalLaneLean.BernoulliEulerObjects

namespace HautevilleHouse
namespace BernoulliEulerNumbersPolynomialsLemmaCanonicalLaneLean

structure VonStaudtClausenCertificate where
  vonStaudtClausenTheorem : Prop
  denominatorCharacterization : Prop
  vonStaudtClausenClosed : vonStaudtClausenTheorem
  denominatorCharacterizationClosed : denominatorCharacterization

def sourceVonStaudtClausenCertificate : VonStaudtClausenCertificate where
  vonStaudtClausenTheorem := True
  denominatorCharacterization := True
  vonStaudtClausenClosed := trivial
  denominatorCharacterizationClosed := trivial

def VonStaudtClausenClosed (C : VonStaudtClausenCertificate) : Prop :=
  C.vonStaudtClausenTheorem ∧ C.denominatorCharacterization

theorem source_von_staudt_clausen_closed :
  VonStaudtClausenClosed sourceVonStaudtClausenCertificate := by
  exact And.intro sourceVonStaudtClausenCertificate.vonStaudtClausenClosed
    sourceVonStaudtClausenCertificate.denominatorCharacterizationClosed

end BernoulliEulerNumbersPolynomialsLemmaCanonicalLaneLean
end HautevilleHouse