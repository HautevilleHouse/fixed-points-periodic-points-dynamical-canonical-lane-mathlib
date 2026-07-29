import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FixedPointsPeriodicPointsDynamicalCanonicalLaneLean

structure LiouvilleDynamicsPackage where
  phaseSpace : Type u
  measure : Type v
  invariantMeasureExists : Prop
  poincareRecurrence : Prop

structure LiouvilleDynamicsEvidence (L : LiouvilleDynamicsPackage) where
  invariantMeasureExistsClosed : L.invariantMeasureExists
  poincareRecurrenceClosed : L.poincareRecurrence

def LiouvilleDynamicsClosed (L : LiouvilleDynamicsPackage) : Prop :=
  L.invariantMeasureExists ∧ L.poincareRecurrence

theorem liouville_dynamics_closed_from_evidence
    (L : LiouvilleDynamicsPackage) (E : LiouvilleDynamicsEvidence L) :
    LiouvilleDynamicsClosed L := by
  exact And.intro E.invariantMeasureExistsClosed E.poincareRecurrenceClosed

end FixedPointsPeriodicPointsDynamicalCanonicalLaneLean
end HautevilleHouse
