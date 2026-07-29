import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DerivedCategoriesCommutativeRingsCanonicalLaneLean

structure TriangulatedStructurePackage {A : Type u} [CommRing A]
    (D : DerivedCategoryPackage A) where
  shiftFunctor : D.derivedCategory → D.derivedCategory
  distinguishedTriangle : D.derivedCategory × D.derivedCategory × D.derivedCategory → Prop
  octahedralAxiom : Prop
  shiftAutomorphism : Prop
  triangleRotation : Prop

structure TriangulatedStructureEvidence {A : Type u} [CommRing A]
    {D : DerivedCategoryPackage A} (T : TriangulatedStructurePackage D) where
  octahedralAxiomClosed : T.octahedralAxiom
  shiftAutomorphismClosed : T.shiftAutomorphism
  triangleRotationClosed : T.triangleRotation

def TriangulatedStructureClosed {A : Type u} [CommRing A]
    {D : DerivedCategoryPackage A} (T : TriangulatedStructurePackage D) : Prop :=
  T.octahedralAxiom ∧ T.shiftAutomorphism ∧ T.triangleRotation

theorem triangulated_structure_closed_from_evidence {A : Type u} [CommRing A]
    {D : DerivedCategoryPackage A} (T : TriangulatedStructurePackage D)
    (E : TriangulatedStructureEvidence T) : TriangulatedStructureClosed T := by
  exact And.intro E.octahedralAxiomClosed
    (And.intro E.shiftAutomorphismClosed E.triangleRotationClosed)

end DerivedCategoriesCommutativeRingsCanonicalLaneLean
end HautevilleHouse