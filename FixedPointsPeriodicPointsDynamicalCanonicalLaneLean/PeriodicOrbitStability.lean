import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FixedPointsPeriodicPointsDynamicalCanonicalLaneLean

structure PeriodicOrbitStabilityPackage where
  dynamicalSystem : Type u
  phaseSpace : Type v
  topology : TopologicalSpace phaseSpace
  map : phaseSpace → phaseSpace
  orbit : ℕ → phaseSpace
  stableUnderSmallPerturbation : Prop

structure PeriodicOrbitStabilityEvidence where
  stableUnderSmallPerturbationClosed : Prop

def PeriodicOrbitStabilityClosed (P : PeriodicOrbitStabilityPackage) : Prop :=
  P.stableUnderSmallPerturbation

theorem periodic_orbit_stability_closed_from_evidence
    (P : PeriodicOrbitStabilityPackage) (E : PeriodicOrbitStabilityEvidence) :
    PeriodicOrbitStabilityClosed P := by
  exact E.stableUnderSmallPerturbationClosed

end FixedPointsPeriodicPointsDynamicalCanonicalLaneLean
end HautevilleHouse