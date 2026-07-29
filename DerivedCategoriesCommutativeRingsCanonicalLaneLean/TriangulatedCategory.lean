import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DerivedCategoriesCommutativeRingsCanonicalLaneLean

structure TriangulatedCategory where
  obj : Type u
  shift : obj → obj
  distinguishedTriangles : Set (Triangle obj)
  octahedronAxiom : Prop

structure TriangulatedCategoryEvidence (T : TriangulatedCategory) where
  shiftAutoEquivalence : Equivalence T.obj T.obj
  distinguishedTrianglesClosed : T.distinguishedTriangles.Nonempty
  octahedronAxiomClosed : T.octahedronAxiom

def TriangulatedCategoryClosed (T : TriangulatedCategory) : Prop :=
  T.obj.Nonempty ∧ T.octahedronAxiom

theorem triangulated_category_closed_from_evidence (T : TriangulatedCategory)
    (E : TriangulatedCategoryEvidence T) : TriangulatedCategoryClosed T := by
  refine ⟨?_, E.octahedronAxiomClosed⟩
  exact E.distinguishedTrianglesClosed

end DerivedCategoriesCommutativeRingsCanonicalLaneLean
end HautevilleHouse