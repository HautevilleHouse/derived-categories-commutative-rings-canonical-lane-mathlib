import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DerivedCategoriesCommutativeRingsCanonicalLaneLean.DerivedCategory

namespace HautevilleHouse
namespace DerivedCategoriesCommutativeRingsCanonicalLaneLean

structure Localization {A : Type u} [Category A] (W : Set (Morphism A)) where
  category : Type u
  functor : A ⥤ category
  universalProperty : ∀ (B : Type u) [Category B], (A ⥤ B) → (category ⥤ B)
  invertsW : ∀ f ∈ W, IsIsomorphism (functor.map f)

structure LocalizationEvidence {A : Type u} [Category A] {W : Set (Morphism A)} (L : Localization W) where
  localizedTriangulated : TriangulatedCategory
  universalPropertyClosed : ∀ (B : Type u) [Category B] [Triangulated B], ∃! F : L.category ⥤ B, F ∘ L.functor = ?_
  invertsWClosed : ∀ f ∈ W, IsIsomorphism (L.functor.map f)

def LocalizationClosed {A : Type u} [Category A] {W : Set (Morphism A)} (L : Localization W) : Prop :=
  L.category.Nonempty ∧ ∀ f ∈ W, IsIsomorphism (L.functor.map f)

theorem localization_closed_from_evidence {A : Type u} [Category A] {W : Set (Morphism A)}
    (L : Localization W) (E : LocalizationEvidence L) : LocalizationClosed L := by
  refine ⟨?_, E.invertsWClosed⟩
  exact L.category.one

end DerivedCategoriesCommutativeRingsCanonicalLaneLean
end HautevilleHouse