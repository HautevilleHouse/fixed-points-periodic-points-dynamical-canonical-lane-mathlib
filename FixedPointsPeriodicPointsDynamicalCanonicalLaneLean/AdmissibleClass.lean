import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FixedPointsPeriodicPointsDynamicalCanonicalLaneLean

structure AdmissibleClass where
  object : FixedPointAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FixedPointWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FixedPointsPeriodicPointsDynamicalCanonicalLaneLean
end HautevilleHouse