import FixedPointsPeriodicPointsDynamicalCanonicalLaneLean.HyperbolicDynamicsEvidence

namespace HautevilleHouse
namespace FixedPointsPeriodicPointsDynamicalCanonicalLaneLean

structure BifurcationClassification (A : DiscreteDynamicsAdmissibleClass) where
  parameterSpace : Type u
  bifurcationPoints : Set (A.system × parameterSpace)
  genericBifurcationTypes : Prop
  codimensionOne : Prop

def BifurcationClosed {A : DiscreteDynamicsAdmissibleClass} (B : BifurcationClassification A) : Prop :=
  B.genericBifurcationTypes ∧ B.codimensionOne

theorem bifurcation_closed_from_evidence {A : DiscreteDynamicsAdmissibleClass}
    (B : BifurcationClassification A) (hgen : B.genericBifurcationTypes) (hcod : B.codimensionOne) :
    BifurcationClosed B := by
  exact And.intro hgen hcod

end FixedPointsPeriodicPointsDynamicalCanonicalLaneLean
end HautevilleHouse