import FixedPointsPeriodicPointsDynamicalCanonicalLaneLean.FixedPointTypes

/-!
# Periodic Point Properties Package

This module defines properties of periodic points and their relations
to fixed points.
-/

namespace HautevilleHouse
namespace FixedPointsPeriodicPointsDynamicalCanonicalLaneLean

structure PeriodicPointSet (α : Type u) (f : α → α) where
  points : Set α
  isPeriodicSet : ∀ x ∈ points, ∃ (n : ℕ) (hn : n > 0), f^[n] x = x

structure PrimePeriod (α : Type u) (x : α) (f : α → α) (n : ℕ) where
  isPeriodic : f^[n] x = x
  minimality : ∀ (m : ℕ) (hm : m < n) (hpos : m > 0), f^[m] x ≠ x

theorem fixed_point_is_periodic (α : Type u) (f : α → α) (x : α) (hfx : f x = x) :
    PeriodicPointType α := by
  refine { point := x, period := 1, isPeriodic := ?_, minimality := ?_ }
  · calc
    f x = x := hfx
    _ = x := rfl
  · intro m hm hpos
    have hpos' : m ≥ 1 := Nat.one_le_of_lt hpos
    have hm' : m < 1 := hm
    exact Nat.not_lt.mpr hpos' hm'

theorem periodic_point_iterate (α : Type u) (f : α → α) (x : α) (n : ℕ) (h : f^[n] x = x) :
    f x = x ∨ ∃ (k : ℕ) (hk : k < n), f^[k] x ≠ x := by
  by_cases hx : f x = x
  · exact Or.inl hx
  · exact Or.inr ⟨1, by omega, ?_⟩
    calc
      f x ≠ x := hx
      _ := rfl

end FixedPointsPeriodicPointsDynamicalCanonicalLaneLean
end HautevilleHouse