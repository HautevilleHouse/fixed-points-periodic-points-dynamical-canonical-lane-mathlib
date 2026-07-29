import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FixedPointsPeriodicPointsDynamicalCanonicalLaneLean

structure PeriodicPointPackage where
  ambientSpace : Type u
  map : ambientSpace → ambientSpace
  periods : Set ℕ
  periodicPointSet : ℕ → Set ambientSpace
  primePeriodsCovered : Prop
  shadowingProperty : Prop
  specificationProperty : Prop

def PeriodicPointClosed (P : PeriodicPointPackage) : Prop :=
  P.primePeriodsCovered ∧ P.shadowingProperty ∧ P.specificationProperty

end FixedPointsPeriodicPointsDynamicalCanonicalLaneLean
end HautevilleHouse
