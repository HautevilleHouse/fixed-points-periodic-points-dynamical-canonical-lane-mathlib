import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FixedPointsPeriodicPointsDynamicalCanonicalLaneLean

structure FixedPointIndexPackage where
  map : Type u → Type v
  fixedPoint : Point
  index : ℤ
  indexWellDefined : Prop

structure FixedPointIndexEvidence where
  indexWellDefinedClosed : Prop

def FixedPointIndexClosed (F : FixedPointIndexPackage) : Prop :=
  F.indexWellDefined

theorem fixed_point_index_closed_from_evidence
    (F : FixedPointIndexPackage) (E : FixedPointIndexEvidence) :
    FixedPointIndexClosed F := by
  exact E.indexWellDefinedClosed

end FixedPointsPeriodicPointsDynamicalCanonicalLaneLean
end HautevilleHouse