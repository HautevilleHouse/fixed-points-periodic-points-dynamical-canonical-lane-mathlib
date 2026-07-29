import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FixedPointsPeriodicPointsDynamicalCanonicalLaneLean

structure ShadowingPropertyPackage where
  dynamicalSystem : Type u
  phaseSpace : Type v
  metric : MetricSpace phaseSpace
  map : phaseSpace → phaseSpace
  shadowingHolds : Prop
  periodicShadowing : Prop

structure ShadowingPropertyEvidence where
  shadowingHoldsClosed : Prop
  periodicShadowingClosed : Prop

def ShadowingPropertyClosed (S : ShadowingPropertyPackage) : Prop :=
  S.shadowingHolds ∧ S.periodicShadowing

theorem shadowing_property_closed_from_evidence
    (S : ShadowingPropertyPackage) (E : ShadowingPropertyEvidence) :
    ShadowingPropertyClosed S := by
  exact And.intro E.shadowingHoldsClosed E.periodicShadowingClosed

end FixedPointsPeriodicPointsDynamicalCanonicalLaneLean
end HautevilleHouse