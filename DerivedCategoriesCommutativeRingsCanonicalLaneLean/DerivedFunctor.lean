import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DerivedCategoriesCommutativeRingsCanonicalLaneLean

structure DerivedFunctorPackage {A : Type u} [CommRing A]
    (I : InjectiveResolutionPackage A) where
  functorDomain : Type v
  functorCodomain : Type w
  leftDerived : ℕ → (functorDomain → functorCodomain)
  rightDerived : ℕ → (functorDomain → functorCodomain)
  derivedExactness : Prop
  spectralSequence : Prop

structure DerivedFunctorEvidence {A : Type u} [CommRing A]
    {I : InjectiveResolutionPackage A} (F : DerivedFunctorPackage I) where
  derivedExactnessClosed : F.derivedExactness
  spectralSequenceClosed : F.spectralSequence

def DerivedFunctorClosed {A : Type u} [CommRing A]
    {I : InjectiveResolutionPackage A} (F : DerivedFunctorPackage I) : Prop :=
  F.derivedExactness ∧ F.spectralSequence

theorem derived_functor_closed_from_evidence {A : Type u} [CommRing A]
    {I : InjectiveResolutionPackage A} (F : DerivedFunctorPackage I)
    (E : DerivedFunctorEvidence F) : DerivedFunctorClosed F := by
  exact And.intro E.derivedExactnessClosed E.spectralSequenceClosed

end DerivedCategoriesCommutativeRingsCanonicalLaneLean
end HautevilleHouse