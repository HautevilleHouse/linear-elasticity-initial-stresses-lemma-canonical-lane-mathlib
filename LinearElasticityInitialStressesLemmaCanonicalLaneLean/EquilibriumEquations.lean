import LinearElasticityInitialStressesLemmaCanonicalLaneLean.StressStrainRelations

namespace HautevilleHouse
namespace LinearElasticityInitialStressesLemmaCanonicalLaneLean

structure EquilibriumEquation (body : Type u) where
  bodyForce : body → ℝ^3
  stressDivergence : body → ℝ^3
  differentialEquation : ∀ x : body, stressDivergence x + bodyForce x = 0

structure BoundaryConditions (body : Type u) where
  prescribedTraction : Set body
  traction : body → ℝ^3
  prescribedDisplacement : Set body
  displacement : body → ℝ^3
  boundarySatisfied : Prop

structure EquilibriumSystem (body : Type u) where
  equation : EquilibriumEquation body
  boundary : BoundaryConditions body
  systemClosure : Prop

theorem equilibrium_closure (body : Type u) (sys : EquilibriumSystem body) : Prop :=
sys.equation.differentialEquation ∧ sys.boundary.boundarySatisfied

end LinearElasticityInitialStressesLemmaCanonicalLaneLean
end HautevilleHouse