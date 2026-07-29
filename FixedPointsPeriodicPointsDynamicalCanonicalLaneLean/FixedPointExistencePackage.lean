import FixedPointsPeriodicPointsDynamicalCanonicalLaneLean.AdmissibleClass

/-!
# Fixed Point Existence Package
-/

namespace HautevilleHouse
namespace FixedPointsPeriodicPointsDynamicalCanonicalLaneLean

structure FixedPointExistencePackage where
  map : Type → Type
  domain : Type
  continuity : Prop
  contractivity : Prop
  existenceAndUniqueness : Prop
  iterativeConstruction : Prop

structure FixedPointExistenceEvidence (F : FixedPointExistencePackage) where
  continuityClosed : F.continuity
  contractivityClosed : F.contractivity
  existenceAndUniquenessClosed : F.existenceAndUniqueness
  iterativeConstructionClosed : F.iterativeConstruction

def FixedPointExistenceClosed (F : FixedPointExistencePackage) : Prop :=
  F.continuity ∧ F.contractivity ∧ F.existenceAndUniqueness ∧ F.iterativeConstruction

theorem fixed_point_existence_closed_from_evidence (F : FixedPointExistencePackage) (E : FixedPointExistenceEvidence F) : FixedPointExistenceClosed F := by
  exact And.intro E.continuityClosed (And.intro E.contractivityClosed (And.intro E.existenceAndUniquenessClosed E.iterativeConstructionClosed))

end FixedPointsPeriodicPointsDynamicalCanonicalLaneLean
end HautevilleHouse