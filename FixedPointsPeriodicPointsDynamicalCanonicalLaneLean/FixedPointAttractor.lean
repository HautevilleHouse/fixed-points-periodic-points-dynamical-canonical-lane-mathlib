import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FixedPointsPeriodicPointsDynamicalCanonicalLaneLean

structure FixedPointPackage where
  ambientSpace : Type u
  map : ambientSpace → ambientSpace
  fixedPointSet : Set ambientSpace
  attractorBasin : Set ambientSpace
  topologicalTransitivity : Prop
  densityOfPeriodicPoints : Prop
  stabilityUnderPerturbation : Prop

def FixedPointClosed (F : FixedPointPackage) : Prop :=
  F.topologicalTransitivity ∧ F.densityOfPeriodicPoints ∧ F.stabilityUnderPerturbation

end FixedPointsPeriodicPointsDynamicalCanonicalLaneLean
end HautevilleHouse
