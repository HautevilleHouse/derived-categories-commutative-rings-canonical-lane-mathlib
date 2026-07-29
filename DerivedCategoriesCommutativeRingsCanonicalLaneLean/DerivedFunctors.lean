import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DerivedCategoriesCommutativeRingsCanonicalLaneLean.DerivedCategoryDefinitions

namespace HautevilleHouse
namespace DerivedCategoriesCommutativeRingsCanonicalLaneLean

structure DerivedFunctorPackage where
  ring : Type u
  ringType : CommRing ring
  modCat : Category (ModuleCat ring)
  abelian : Abelian modCat
  derived : DerivedCategory (ModuleCat ring)
  leftDerived : (ModuleCat ring) ⥤ (ModuleCat ring)
  rightDerived : (ModuleCat ring) ⥤ (ModuleCat ring)
  leftExactness : Prop
  rightExactness : Prop
  derivedAdjunction : Prop

def derivedFunctorClosed (pkg : DerivedFunctorPackage) : Prop :=
  pkg.leftExactness ∧ pkg.rightExactness ∧ pkg.derivedAdjunction

end DerivedCategoriesCommutativeRingsCanonicalLaneLean
end HautevilleHouse