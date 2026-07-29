import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DerivedCategoriesCommutativeRingsCanonicalLaneLean.DerivedCategoryDefinitions

namespace HautevilleHouse
namespace DerivedCategoriesCommutativeRingsCanonicalLaneLean

structure FlatResolutionPackage where
  ring : Type u
  ringType : CommRing ring
  module : ModuleCat ring
  flatResolution : ℕ → ModuleCat ring
  quasiIsomorphism : Prop
  flatEpimorphism : Prop
  resolutionExact : Prop

def flatResolutionClosed (pkg : FlatResolutionPackage) : Prop :=
  pkg.quasiIsomorphism ∧ pkg.flatEpimorphism ∧ pkg.resolutionExact

end DerivedCategoriesCommutativeRingsCanonicalLaneLean
end HautevilleHouse