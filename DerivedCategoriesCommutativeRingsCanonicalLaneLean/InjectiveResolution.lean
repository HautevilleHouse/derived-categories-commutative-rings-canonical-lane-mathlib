import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DerivedCategoriesCommutativeRingsCanonicalLaneLean

structure InjectiveResolutionPackage {A : Type u} [CommRing A] where
  injectiveObjects : Type v
  enoughInjectives : Prop
  resolutionFunctor : (A : ModuleCat A) → (ChainComplex A) // quasiIsomorphism
  resolutionExactness : Prop
  functoriality : Prop

structure InjectiveResolutionEvidence {A : Type u} [CommRing A]
    (I : InjectiveResolutionPackage A) where
  enoughInjectivesClosed : I.enoughInjectives
  resolutionExactnessClosed : I.resolutionExactness
  functorialityClosed : I.functoriality

def InjectiveResolutionClosed {A : Type u} [CommRing A]
    (I : InjectiveResolutionPackage A) : Prop :=
  I.enoughInjectives ∧ I.resolutionExactness ∧ I.functoriality

theorem injective_resolution_closed_from_evidence {A : Type u} [CommRing A]
    (I : InjectiveResolutionPackage A) (E : InjectiveResolutionEvidence I) :
    InjectiveResolutionClosed I := by
  exact And.intro E.enoughInjectivesClosed
    (And.intro E.resolutionExactnessClosed E.functorialityClosed)

end DerivedCategoriesCommutativeRingsCanonicalLaneLean
end HautevilleHouse