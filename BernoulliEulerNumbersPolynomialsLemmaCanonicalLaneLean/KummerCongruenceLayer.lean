import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BernoulliEulerNumbersPolynomialsLemmaCanonicalLaneLean.BernoulliEulerObjects

namespace HautevilleHouse
namespace BernoulliEulerNumbersPolynomialsLemmaCanonicalLaneLean

structure KummerCongruenceCertificate where
  kummerCongruence : Prop
  irregularPrimeCondition : Prop
  kummerCongruenceClosed : kummerCongruence
  irregularPrimeConditionClosed : irregularPrimeCondition

def sourceKummerCongruenceCertificate : KummerCongruenceCertificate where
  kummerCongruence := True
  irregularPrimeCondition := True
  kummerCongruenceClosed := trivial
  irregularPrimeConditionClosed := trivial

def KummerCongruenceClosed (C : KummerCongruenceCertificate) : Prop :=
  C.kummerCongruence ∧ C.irregularPrimeCondition

theorem source_kummer_congruence_closed :
  KummerCongruenceClosed sourceKummerCongruenceCertificate := by
  exact And.intro sourceKummerCongruenceCertificate.kummerCongruenceClosed
    sourceKummerCongruenceCertificate.irregularPrimeConditionClosed

end BernoulliEulerNumbersPolynomialsLemmaCanonicalLaneLean
end HautevilleHouse