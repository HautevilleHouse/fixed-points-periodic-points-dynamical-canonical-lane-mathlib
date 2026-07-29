import canonicalLaneMathlib.AdmissibleClass

/-!
# Fixed Point Types Package

This module defines the structures for fixed points, periodic points, and
basic dynamical systems used throughout the domain.
-/

namespace HautevilleHouse
namespace FixedPointsPeriodicPointsDynamicalCanonicalLaneLean

structure FixedPointType (α : Type u) where
  point : α
  isFixed : Prop
  stability : Prop

structure PeriodicPointType (α : Type u) where
  point : α
  period : ℕ
  isPeriodic : Prop
  minimality : Prop

structure DynamicalSystem (α : Type u) (β : Type v) where
  stateSpace : Type u
  timeSpace : Type v
  evolve : timeSpace → stateSpace → stateSpace
  identityAtZero : ∀ x : stateSpace, evolve (0 : timeSpace) x = x
  semigroupProperty : ∀ (t1 t2 : timeSpace) (x : stateSpace),
    evolve (t1 + t2) x = evolve t1 (evolve t2 x)

structure HyperbolicFixedPoint (α : Type u) (M : Type v) [NormedAddCommGroup M] [NormedSpace ℝ M]
    (f : M → M) where
  fixedPoint : M
  derivativeAtPoint : M →L[ℝ] M
  noUnitEigenvalues : ∀ (λ : ℂ), eigenvalue derivativeAtPoint λ → |λ| ≠ 1
  stabilityType : Prop
  localStableManifold : Prop
  localUnstableManifold : Prop

end FixedPointsPeriodicPointsDynamicalCanonicalLaneLean
end HautevilleHouse