import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DerivedCategoriesCommutativeRingsCanonicalLaneLean.DerivedFunctor

namespace HautevilleHouse
namespace DerivedCategoriesCommutativeRingsCanonicalLaneLean

structure SpectralSequence {A : Type u} [Category A] [Abelian A] where
  pages : ℕ → (ℤ × ℤ) → A
  differentials : ∀ r, pages r → pages r
  convergence : Prop

structure SpectralSequenceEvidence {A : Type u} [Category A] [Abelian A] (S : SpectralSequence A) where
  differentialsSquared : ∀ r, S.differentials r ∘ S.differentials r = 0
  pageStabilization : ∀ s, ∃ r, ∀ n ≥ r, S.pages r s = S.pages n s
  convergenceClosed : S.convergence

def SpectralSequenceClosed {A : Type u} [Category A] [Abelian A] (S : SpectralSequence A) : Prop :=
  S.convergence ∧ ∀ r, S.differentials r ∘ S.differentials r = 0

theorem spectral_sequence_closed_from_evidence {A : Type u} [Category A] [Abelian A]
    (S : SpectralSequence A) (E : SpectralSequenceEvidence A) : SpectralSequenceClosed S := by
  refine ⟨E.convergenceClosed, E.differentialsSquared⟩

end DerivedCategoriesCommutativeRingsCanonicalLaneLean
end HautevilleHouse