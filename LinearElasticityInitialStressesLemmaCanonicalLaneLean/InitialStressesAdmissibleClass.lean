import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesLemmaCanonicalLaneLean

structure LinearElasticityAdmittedObject where
  body : Type u
  stressField : body → Type v
  initialStrain : Prop
  equilibriumCondition : Prop
  constitutiveLaw : Prop
  conclusion : initialStrain ∧ equilibriumCondition ∧ constitutiveLaw

structure AdmissibleClass where
  object : LinearElasticityAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  LinearElasticityWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end LinearElasticityInitialStressesLemmaCanonicalLaneLean
end HautevilleHouse
