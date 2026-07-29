import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FixedPointsPeriodicPointsDynamicalCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FixedPointWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FixedPointsPeriodicPointsDynamicalCanonicalLaneLean
end HautevilleHouse