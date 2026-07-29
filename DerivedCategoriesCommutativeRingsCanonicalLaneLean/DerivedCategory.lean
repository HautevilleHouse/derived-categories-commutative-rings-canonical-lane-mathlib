import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DerivedCategoriesCommutativeRingsCanonicalLaneLean.TriangulatedCategory

namespace HautevilleHouse
namespace DerivedCategoriesCommutativeRingsCanonicalLaneLean

structure DerivedCategory (A : Type u) [Category A] [Abelian A] where
  obj : Type u
  quasiIsomorphisms : Set (Morphism (ChainComplex A))
  localization : Category obj

structure DerivedCategoryEvidence {A : Type u} [Category A] [Abelian A] (D : DerivedCategory A) where
  localizedTriangulated : TriangulatedCategory
  localizationClosed : D.localization.IsTriangulated
  qisInvertible : ∀ (f : Morphism (ChainComplex A)), f ∈ D.quasiIsomorphisms → IsIsomorphism (D.localization.functor.map f)

def DerivedCategoryClosed {A : Type u} [Category A] [Abelian A] (D : DerivedCategory A) : Prop :=
  D.obj.Nonempty ∧ D.localization.IsTriangulated

theorem derived_category_closed_from_evidence {A : Type u} [Category A] [Abelian A]
    (D : DerivedCategory A) (E : DerivedCategoryEvidence D) : DerivedCategoryClosed D := by
  refine ⟨?_, E.localizationClosed⟩
  exact D.obj.one

end DerivedCategoriesCommutativeRingsCanonicalLaneLean
end HautevilleHouse