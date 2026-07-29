import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DerivedCategoriesCommutativeRingsCanonicalLaneLean.DerivedCategory

namespace HautevilleHouse
namespace DerivedCategoriesCommutativeRingsCanonicalLaneLean

structure GrothendieckDerivedCategory (A : Type u) [Category A] [Abelian A] [HasEnoughInjectives A] where
  obj : Type u
  derivedCategory : DerivedCategory A
  canonicalEquivalence : Equivalence (DerivedCategory A) obj

structure GrothendieckDerivedCategoryEvidence {A : Type u} [Category A] [Abelian A] [HasEnoughInjectives A]
    (G : GrothendieckDerivedCategory A) where
  injectiveResolutionExists : ∀ X : A, ∃ I : InjectiveResolution X
  canonicalEquivalenceClosed : G.canonicalEquivalence.IsEquivalence

def GrothendieckDerivedCategoryClosed {A : Type u} [Category A] [Abelian A] [HasEnoughInjectives A]
    (G : GrothendieckDerivedCategory A) : Prop :=
  G.obj.Nonempty ∧ G.canonicalEquivalence.IsEquivalence

theorem grothendieck_derived_category_closed_from_evidence {A : Type u} [Category A] [Abelian A]
    [HasEnoughInjectives A] (G : GrothendieckDerivedCategory A)
    (E : GrothendieckDerivedCategoryEvidence G) : GrothendieckDerivedCategoryClosed G := by
  refine ⟨?_, E.canonicalEquivalenceClosed⟩
  exact G.obj.one

end DerivedCategoriesCommutativeRingsCanonicalLaneLean
end HautevilleHouse