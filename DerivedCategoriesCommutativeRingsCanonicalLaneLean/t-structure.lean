import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DerivedCategoriesCommutativeRingsCanonicalLaneLean

structure TStructurePackage where
  heart : Type u
  truncationFunctors : Prop
  truncationAxioms : Prop
  heartAbelian : Prop
  tStructureAxioms : truncationAxioms
  heartAbelianTerm : heartAbelian
  tStructureEvidence : TStructureEvidence this

def TStructureClosed (T : TStructurePackage) : Prop :=
  T.truncationAxioms ∧ T.heartAbelian

end DerivedCategoriesCommutativeRingsCanonicalLaneLean
end HautevilleHouse