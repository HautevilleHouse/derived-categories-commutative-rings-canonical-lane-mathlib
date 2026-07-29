import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DerivedCategoriesCommutativeRingsCanonicalLaneLean

structure DerivedFunctorPackage where
  sourceCategory : Type u
  targetCategory : Type v
  derivedFunctor : Prop
  derivedFunctorDefined : derivedFunctor
  derivedFunctorEvidence : DerivedFunctorEvidence this

def DerivedFunctorClosed (F : DerivedFunctorPackage) : Prop :=
  F.derivedFunctor

end DerivedCategoriesCommutativeRingsCanonicalLaneLean
end HautevilleHouse