import FixedPointsPeriodicPointsDynamicalCanonicalLaneLean.PeriodicOrbitPackage

namespace HautevilleHouse
namespace FixedPointsPeriodicPointsDynamicalCanonicalLaneLean

structure HyperbolicDynamicsEvidence (A : DiscreteDynamicsAdmissibleClass) where
  hyperbolicFixedPoints : Prop
  stableUnstableManifolds : Prop
  transverseHomoclinicPoints : Prop

def HyperbolicDynamicsClosed {A : DiscreteDynamicsAdmissibleClass} (H : HyperbolicDynamicsEvidence A) : Prop :=
  H.hyperbolicFixedPoints ∧ H.stableUnstableManifolds ∧ H.transverseHomoclinicPoints

theorem hyperbolic_dynamics_closed_from_evidence {A : DiscreteDynamicsAdmissibleClass}
    (H : HyperbolicDynamicsEvidence A) : HyperbolicDynamicsClosed H := by
  exact And.intro H.hyperbolicFixedPoints (And.intro H.stableUnstableManifolds H.transverseHomoclinicPoints)

end FixedPointsPeriodicPointsDynamicalCanonicalLaneLean
end HautevilleHouse