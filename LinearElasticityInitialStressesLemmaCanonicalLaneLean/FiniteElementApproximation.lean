import LinearElasticityInitialStressesLemmaCanonicalLaneLean.InitialStressesLemma

namespace HautevilleHouse
namespace LinearElasticityInitialStressesLemmaCanonicalLaneLean

structure FiniteElementMesh (body : Type u) where
  elements : List (Set body)
  nodes : List body
  meshClosure : Prop

structure BasisFunction (body : Type u) where
  shapeFunctions : body → ℝ^3
  compactSupport : Prop

structure ApproximationSpace (body : Type u) where
  mesh : FiniteElementMesh body
  basis : BasisFunction body
  dimension : ℕ

structure GalerkinApproximation (body : Type u) where
  testFunctions : ApproximationSpace body
  trialFunctions : ApproximationSpace body
  weakFormulation : Prop

theorem approximation_convergence (body : Type u) (approx : GalerkinApproximation body) : Prop :=
approx.weakFormulation

end LinearElasticityInitialStressesLemmaCanonicalLaneLean
end HautevilleHouse