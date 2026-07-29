import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DerivedCategoriesCommutativeRingsCanonicalLaneLean

structure DerivedCategory (A : Type u) [Category A] [Abelian A] where
  obj : Type u
  shift : ℤ → DerivedCategory A
  distinguishedTriangles : Set (Triangle (DerivedCategory A))
  triangulated : Triangulated (DerivedCategory A)

structure DerivedCategoryPackage where
  ring : Type u
  ringType : CommRing ring
  category : Category (ModuleCat ring)
  abelian : Abelian category
  derived : DerivedCategory (ModuleCat ring)
  derivedClosed : Prop

def derivedCategoryClosed (pkg : DerivedCategoryPackage) : Prop :=
  pkg.derivedClosed

end DerivedCategoriesCommutativeRingsCanonicalLaneLean
end HautevilleHouse