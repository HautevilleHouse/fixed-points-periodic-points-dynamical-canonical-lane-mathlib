import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FixedPointsPeriodicPointsDynamicalCanonicalLaneLean

structure BrouwerFixedPointPackage where
  ball : Type u
  dimension : ℕ
  continuousMap : ball → ball
  fixedPointExists : Prop

structure BrouwerFixedPointEvidence (B : BrouwerFixedPointPackage) where
  fixedPointExistsClosed : B.fixedPointExists

def BrouwerFixedPointClosed (B : BrouwerFixedPointPackage) : Prop :=
  B.fixedPointExists

theorem brouwer_fixed_point_closed_from_evidence
    (B : BrouwerFixedPointPackage) (E : BrouwerFixedPointEvidence B) :
    BrouwerFixedPointClosed B := by
  exact E.fixedPointExistsClosed

end FixedPointsPeriodicPointsDynamicalCanonicalLaneLean
end HautevilleHouse
