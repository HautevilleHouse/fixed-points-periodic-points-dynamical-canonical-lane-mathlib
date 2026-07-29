import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FixedPointsPeriodicPointsDynamicalCanonicalLaneLean

structure HyperbolicityStructurePackage where
  map : Type u → Type v
  invariantSet : Set (Type v)
  hyperbolicSplitting : Prop
  stableUnstableManifolds : Prop

structure HyperbolicityStructureEvidence where
  hyperbolicSplittingClosed : Prop
  stableUnstableManifoldsClosed : Prop

def HyperbolicityStructureClosed (H : HyperbolicityStructurePackage) : Prop :=
  H.hyperbolicSplitting ∧ H.stableUnstableManifolds

theorem hyperbolicity_structure_closed_from_evidence
    (H : HyperbolicityStructurePackage) (E : HyperbolicityStructureEvidence) :
    HyperbolicityStructureClosed H := by
  exact And.intro E.hyperbolicSplittingClosed E.stableUnstableManifoldsClosed

end FixedPointsPeriodicPointsDynamicalCanonicalLaneLean
end HautevilleHouse