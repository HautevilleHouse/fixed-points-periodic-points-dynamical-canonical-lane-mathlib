import FixedPointsPeriodicPointsDynamicalCanonicalLaneLean.MorseSmaleDynamics

/-!
# Sharkovsky Order Package
-/

namespace HautevilleHouse
namespace FixedPointsPeriodicPointsDynamicalCanonicalLaneLean

structure SharkovskyOrderPackage where
  orderingOnNaturalNumbers : Prop
  implicationOfPeriodThree : Prop
  periodForcing : Prop
  intervalMapApplication : Prop
  converseImplications : Prop

structure SharkovskyOrderEvidence (S : SharkovskyOrderPackage) where
  orderingOnNaturalNumbersClosed : S.orderingOnNaturalNumbers
  implicationOfPeriodThreeClosed : S.implicationOfPeriodThree
  periodForcingClosed : S.periodForcing
  intervalMapApplicationClosed : S.intervalMapApplication
  converseImplicationsClosed : S.converseImplications

def SharkovskyOrderClosed (S : SharkovskyOrderPackage) : Prop :=
  S.orderingOnNaturalNumbers ∧ S.implicationOfPeriodThree ∧ S.periodForcing ∧ S.intervalMapApplication ∧ S.converseImplications

theorem sharkovsky_order_closed_from_evidence (S : SharkovskyOrderPackage) (E : SharkovskyOrderEvidence S) : SharkovskyOrderClosed S := by
  exact And.intro E.orderingOnNaturalNumbersClosed (And.intro E.implicationOfPeriodThreeClosed (And.intro E.periodForcingClosed (And.intro E.intervalMapApplicationClosed E.converseImplicationsClosed)))

end FixedPointsPeriodicPointsDynamicalCanonicalLaneLean
end HautevilleHouse