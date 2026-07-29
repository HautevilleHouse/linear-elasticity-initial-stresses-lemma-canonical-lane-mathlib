import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesLemmaCanonicalLaneLean

structure ElasticityAdmissibleObject where
  elasticBody : Type u
  stressTensor : elasticBody → (Fin 3 → Fin 3 → ℝ)
  initialStrain : elasticBody → (Fin 3 → Fin 3 → ℝ)
  equilibriumCondition : Prop
  bodyForce : elasticBody → ℝ^3
  tractionBoundary : Set elasticBody
  displacementBoundary : Set elasticBody
  stressStrainLaw : ∀ x : elasticBody, stressTensor x = 2 * strainTensor x + λ * trace(strainTensor x) * I
  equilibriumConditionProp : equilibriumCondition

structure AdmittedObject := 
  object : ElasticityAdmissibleObject
  constraintSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : constraintSatisfied ∨ remainderRecorded

end LinearElasticityInitialStressesLemmaCanonicalLaneLean
end HautevilleHouse