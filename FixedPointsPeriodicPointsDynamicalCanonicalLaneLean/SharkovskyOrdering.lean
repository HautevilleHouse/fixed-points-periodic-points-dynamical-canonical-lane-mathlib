import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FixedPointsPeriodicPointsDynamicalCanonicalLaneLean

structure SharkovskyOrderingPackage where
  intervalMapping : ℝ → ℝ
  continuous : Prop
  periodThreeImpliesAll : Prop
  orderingComplete : Prop

structure SharkovskyOrderingEvidence (S : SharkovskyOrderingPackage) where
  continuousClosed : S.continuous
  periodThreeImpliesAllClosed : S.periodThreeImpliesAll
  orderingCompleteClosed : S.orderingComplete

def SharkovskyOrderingClosed (S : SharkovskyOrderingPackage) : Prop :=
  S.continuous ∧ S.periodThreeImpliesAll ∧ S.orderingComplete

theorem sharkovsky_ordering_closed_from_evidence
    (S : SharkovskyOrderingPackage) (E : SharkovskyOrderingEvidence S) :
    SharkovskyOrderingClosed S := by
  exact And.intro E.continuousClosed (And.intro E.periodThreeImpliesAllClosed E.orderingCompleteClosed)

end FixedPointsPeriodicPointsDynamicalCanonicalLaneLean
end HautevilleHouse
