import LinearElasticityInitialStressesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesLemmaCanonicalLaneLean

structure StressStrainRelation where
  elasticModulus : ℝ
  poissonRatio : ℝ
  shearModulus : ℝ
  bulkModulus : ℝ

structure HookesLaw (E : StressStrainRelation) (body : Type u) where
  stressTensor : body → (Fin 3 → Fin 3 → ℝ)
  strainTensor : body → (Fin 3 → Fin 3 → ℝ)
  hookeLaw : ∀ x : body, stressTensor x = λ* trace(strainTensor x) * I + 2*E.shearModulus * strainTensor x

structure IsotropicElasticMaterial where
  hookeLaw : HookesLaw
  isotropicCondition : Prop

theorem hookes_law_closure (E : StressStrainRelation) (body : Type u) (h : HookesLaw E body) : Prop :=
h.hookeLaw ⊤

end LinearElasticityInitialStressesLemmaCanonicalLaneLean
end HautevilleHouse