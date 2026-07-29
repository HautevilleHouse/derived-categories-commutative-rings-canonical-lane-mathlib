import HautevilleHouse.DerivedCategoriesCommutativeRingsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Algebra.Category.ModuleCat.Basic

namespace HautevilleHouse
namespace DerivedCategoriesCommutativeRingsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DerivedCatSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DerivedCatAdmittedObject where
  ring : Type u
  [instRing : Ring ring]
  moduleCat : ModuleCat ring
  boundedDerivedCategory : Prop
  derivedEquivalenceToStandard : Prop
  conclusion : derivedEquivalenceToStandard

structure DerivedCatEndgameState where
  object : DerivedCatAdmittedObject

def DerivedCatWitnessClosed (O : DerivedCatAdmittedObject) : Prop :=
  O.derivedEquivalenceToStandard

end DerivedCategoriesCommutativeRingsCanonicalLaneLean
end HautevilleHouse