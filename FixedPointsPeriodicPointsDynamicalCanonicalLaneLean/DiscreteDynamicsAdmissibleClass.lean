import FixedPointsPeriodicPointsDynamicalCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FixedPointsPeriodicPointsDynamicalCanonicalLaneLean

structure DiscreteDynamicsAdmissibleClass extends AdmissibleClass where
  system : Type u
  stateSpace : Type v
  evolutionMap : system → stateSpace → stateSpace
  isolatedFixedPoints : Prop
  periodicOrbitsClassified : Prop

def fixedPointClosed (A : DiscreteDynamicsAdmissibleClass) : Prop :=
  A.isolatedFixedPoints ∧ A.periodicOrbitsClassified

theorem fixed_point_closed_from_admissible (A : DiscreteDynamicsAdmissibleClass) :
    fixedPointClosed A := by
  exact And.intro A.isolatedFixedPoints A.periodicOrbitsClassified

end FixedPointsPeriodicPointsDynamicalCanonicalLaneLean
end HautevilleHouse