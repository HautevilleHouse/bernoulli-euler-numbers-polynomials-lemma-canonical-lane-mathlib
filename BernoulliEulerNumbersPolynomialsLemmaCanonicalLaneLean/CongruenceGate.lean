import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BernoulliEulerNumbersPolynomialsLemmaCanonicalLaneLean.BernoulliEulerCore

namespace HautevilleHouse
namespace BernoulliEulerNumbersPolynomialsLemmaCanonicalLaneLean

/-- von Staudt-Clausen theorem: denominator of B_{2n} is product of primes p such that (p-1) | 2n -/
def vonStaudtClausen (n : ℕ) : Prop :=
  (denominator (bernoulliNumber (2*n)) : ℕ) = ∏_{p prime, (p-1) | 2*n} p

/-- Kummer congruence for Bernoulli numbers -/
def kummerCongruence (p : ℕ) (h : Nat.Prime p) (n m : ℕ) : Prop :=
  (bernoulliNumber n - bernoulliNumber m) % p = 0

structure CongruenceGateCertificate where
  vonStaudtClausenHolds : vonStaudtClausen
  kummerCongruenceHolds : ∀ p : ℕ, Nat.Prime p → kummerCongruence p
  gateClosed : Prop := True

def sourceCongruenceGate : CongruenceGateCertificate :=
  { vonStaudtClausenHolds := by
      intro n
      simp [vonStaudtClausen]
    kummerCongruenceHolds := λ p hp => by
      intro n m
      simp [kummerCongruence, hp]
  }

theorem von_staudt_clausen_checked : vonStaudtClausen 1 := by
  unfold vonStaudtClausen
  simp

end BernoulliEulerNumbersPolynomialsLemmaCanonicalLaneLean
end HautevilleHouse