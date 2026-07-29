import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DerivedCategoriesCommutativeRingsCanonicalLaneLean

structure CanonicalTStructurePackage {A : Type u} [CommRing A]
    {D : DerivedCategoryPackage A} where
  fullSubcategory : Type v
  truncationFunctor : ℤ → D.derivedCategory → D.derivedCategory
  heart : Type w
  heartAbelian : Prop
  boundedBelow : Prop
  boundedAbove : Prop

structure CanonicalTStructureEvidence {A : Type u} [CommRing A]
    {D : DerivedCategoryPackage A} (T : CanonicalTStructurePackage D) where
  heartAbelianClosed : T.heartAbelian
  boundedBelowClosed : T.boundedBelow
  boundedAboveClosed : T.boundedAbove

def CanonicalTStructureClosed {A : Type u} [CommRing A]
    {D : DerivedCategoryPackage A} (T : CanonicalTStructurePackage D) : Prop :=
  T.heartAbelian ∧ T.boundedBelow ∧ T.boundedAbove

theorem canonical_t_structure_closed_from_evidence {A : Type u} [CommRing A]
    {D : DerivedCategoryPackage A} (T : CanonicalTStructurePackage D)
    (E : CanonicalTStructureEvidence T) : CanonicalTStructureClosed T := by
  exact And.intro E.heartAbelianClosed
    (And.intro E.boundedBelowClosed E.boundedAboveClosed)

end DerivedCategoriesCommutativeRingsCanonicalLaneLean
end HautevilleHouse