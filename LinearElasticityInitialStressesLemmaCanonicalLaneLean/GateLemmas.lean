import LinearElasticityInitialStressesLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace LinearElasticityInitialStressesLemmaCanonicalLaneLean

def gateClosed (A : AdmittedObject) : Prop :=
  A.constraintSatisfied ∨ A.remainderRecorded

theorem gate_from_admitted_object (A : AdmittedObject) :
    gateClosed A := by
  exact A.gateWitness

end LinearElasticityInitialStressesLemmaCanonicalLaneLean
end HautevilleHouse