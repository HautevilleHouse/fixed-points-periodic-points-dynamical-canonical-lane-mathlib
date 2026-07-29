import FixedPointsPeriodicPointsDynamicalCanonicalLaneLean.PeriodicPointClassification

/-!
# Morse-Smale Dynamics Package
-/

namespace HautevilleHouse
namespace FixedPointsPeriodicPointsDynamicalCanonicalLaneLean

structure MorseSmaleDynamicsPackage where
  hyperbolicFixedPoints : Prop
  hyperbolicPeriodicPoints : Prop
  transversalIntersection : Prop
  omegaLimitSetStructure : Prop
  structuralStability : Prop

structure MorseSmaleDynamicsEvidence (M : MorseSmaleDynamicsPackage) where
  hyperbolicFixedPointsClosed : M.hyperbolicFixedPoints
  hyperbolicPeriodicPointsClosed : M.hyperbolicPeriodicPoints
  transversalIntersectionClosed : M.transversalIntersection
  omegaLimitSetStructureClosed : M.omegaLimitSetStructure
  structuralStabilityClosed : M.structuralStability

def MorseSmaleDynamicsClosed (M : MorseSmaleDynamicsPackage) : Prop :=
  M.hyperbolicFixedPoints ∧ M.hyperbolicPeriodicPoints ∧ M.transversalIntersection ∧ M.omegaLimitSetStructure ∧ M.structuralStability

theorem morse_smale_dynamics_closed_from_evidence (M : MorseSmaleDynamicsPackage) (E : MorseSmaleDynamicsEvidence M) : MorseSmaleDynamicsClosed M := by
  exact And.intro E.hyperbolicFixedPointsClosed (And.intro E.hyperbolicPeriodicPointsClosed (And.intro E.transversalIntersectionClosed (And.intro E.omegaLimitSetStructureClosed E.structuralStabilityClosed)))

end FixedPointsPeriodicPointsDynamicalCanonicalLaneLean
end HautevilleHouse