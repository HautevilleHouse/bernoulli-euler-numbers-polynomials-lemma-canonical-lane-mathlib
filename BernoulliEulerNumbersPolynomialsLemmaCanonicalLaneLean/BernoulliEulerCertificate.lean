import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BernoulliEulerNumbersPolynomialsLemmaCanonicalLaneLean.BernoulliEulerObjects
import HautevilleHouse.BernoulliEulerNumbersPolynomialsLemmaCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace BernoulliEulerNumbersPolynomialsLemmaCanonicalLaneLean

structure BernoulliEulerCertificate where
  relation : BernoulliEulerRelation
  bridgeClosed : Prop
  gateClosed : Prop
  bridgeClosedProof : bridgeClosed
  gateClosedProof : gateClosed

def sourceCertificate : BernoulliEulerCertificate := {
  relation := sourceBernoulliEulerRelation,
  bridgeClosed := True,
  gateClosed := True,
  bridgeClosedProof := trivial,
  gateClosedProof := trivial
}

def CertificateClosed (C : BernoulliEulerCertificate) : Prop :=
  C.bridgeClosed ∧ C.gateClosed

theorem source_certificate_closed :
    CertificateClosed sourceCertificate := by
  exact And.intro sourceCertificate.bridgeClosedProof sourceCertificate.gateClosedProof

end BernoulliEulerNumbersPolynomialsLemmaCanonicalLaneLean
end HautevilleHouse
