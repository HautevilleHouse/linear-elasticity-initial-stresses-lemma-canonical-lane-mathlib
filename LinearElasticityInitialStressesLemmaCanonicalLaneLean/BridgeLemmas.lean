import LinearElasticityInitialStressesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmittedObject) : Prop :=
  A.constraintSatisfied

theorem bridge_from_admitted_object (A : AdmittedObject) :
    bridgeClosed A := by
  exact A.constraintSatisfied

end LinearElasticityInitialStressesLemmaCanonicalLaneLean
end HautevilleHouse