import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesLemmaCanonicalLaneLean

structure LinearElasticitySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure LinearElasticityAdmittedObject where
  space : LinearElasticitySpace
  isotropicMedium : Prop
  smallStrains : Prop
  initialStressState : Prop
  conclusion : initialStressState

def LinearElasticityWitnessClosed (O : LinearElasticityAdmittedObject) : Prop :=
  O.initialStressState

structure LinearElasticityEndgameState where
  object : LinearElasticityAdmittedObject

end LinearElasticityInitialStressesLemmaCanonicalLaneLean
end HautevilleHouse