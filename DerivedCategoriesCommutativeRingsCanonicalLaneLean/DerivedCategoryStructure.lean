import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DerivedCategoriesCommutativeRingsCanonicalLaneLean

structure DerivedCategoryPackage where
  homologyType : Type u
  triangulatedStructure : Prop
  exactTriangles : Prop
  translationFunctor : Prop
  distinguishedTrianglesAxiom : Prop
  octahedralAxiom : Prop
  triangulatedStructureTerm : triangulatedStructure
  exactTrianglesTerm : exactTriangles
  translationFunctorTerm : translationFunctor
  distAxiomTerm : distAxiom
  octAxiomTerm : octahedralAxiom
  derivedEvidence : DerivedCategoryEvidence this

def DerivedCategoryClosed (D : DerivedCategoryPackage) : Prop :=
  D.triangulatedStructure ∧ D.exactTriangles ∧ D.translationFunctor ∧
  D.distinguishedTrianglesAxiom ∧ D.octahedralAxiom

end DerivedCategoriesCommutativeRingsCanonicalLaneLean
end HautevilleHouse