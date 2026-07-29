import FixedPointsPeriodicPointsDynamicalCanonicalLaneLean.DiscreteDynamicsAdmissibleClass

namespace HautevilleHouse
namespace FixedPointsPeriodicPointsDynamicalCanonicalLaneLean

structure PeriodicOrbitPackage (A : DiscreteDynamicsAdmissibleClass) where
  orbitLength : Nat
  orbitSet : Set A.stateSpace
  stabilityIndex : Prop
  orbitExists : orbitSet.Nonempty

def PeriodicOrbitClosed {A : DiscreteDynamicsAdmissibleClass} (P : PeriodicOrbitPackage A) : Prop :=
  P.orbitExists ∧ P.stabilityIndex

theorem periodic_orbit_closed_from_evidence {A : DiscreteDynamicsAdmissibleClass}
    (P : PeriodicOrbitPackage A) (h : P.orbitExists) (hstab : P.stabilityIndex) :
    PeriodicOrbitClosed P := by
  exact And.intro h hstab

end FixedPointsPeriodicPointsDynamicalCanonicalLaneLean
end HautevilleHouse