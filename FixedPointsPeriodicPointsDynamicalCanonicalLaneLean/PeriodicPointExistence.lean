import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FixedPointsPeriodicPointsDynamicalCanonicalLaneLean

structure PeriodicPointExistencePackage where
  phaseSpace : Type u
  dynamics : phaseSpace → phaseSpace
  periodN : ℕ
  fixedPointCondition : dynamics^[periodN] = id
  existence : Prop

structure PeriodicPointExistenceEvidence (P : PeriodicPointExistencePackage) where
  existenceClosed : P.existence

def PeriodicPointExistenceClosed (P : PeriodicPointExistencePackage) : Prop :=
  P.existence

theorem periodic_point_existence_closed_from_evidence
    (P : PeriodicPointExistencePackage) (E : PeriodicPointExistenceEvidence P) :
    PeriodicPointExistenceClosed P := by
  exact E.existenceClosed

end FixedPointsPeriodicPointsDynamicalCanonicalLaneLean
end HautevilleHouse
