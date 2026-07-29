import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FixedPointsPeriodicPointsDynamicalCanonicalLaneLean

structure BirkhoffErgodicPackage where
  invariantMeasure : Type u
  ergodicDecomposition : Prop
  birkhoffAverageConvergence : Prop
  genericPointsExist : Prop
  measureEntropyRelation : Prop

def BirkhoffErgodicClosed (B : BirkhoffErgodicPackage) : Prop :=
  B.ergodicDecomposition ∧ B.birkhoffAverageConvergence ∧ B.genericPointsExist ∧ B.measureEntropyRelation

end FixedPointsPeriodicPointsDynamicalCanonicalLaneLean
end HautevilleHouse
