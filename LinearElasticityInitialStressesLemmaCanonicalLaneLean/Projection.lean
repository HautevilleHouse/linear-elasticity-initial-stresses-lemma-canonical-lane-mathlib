import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def linearElasticityProjection : Projection (AdmissibleClass) := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem linear_elasticity_projection_idempotent (x : AdmissibleClass) :
    linearElasticityProjection.toFun (linearElasticityProjection.toFun x) = linearElasticityProjection.toFun x := by
  exact linearElasticityProjection.idempotent x

end LinearElasticityInitialStressesLemmaCanonicalLaneLean
end HautevilleHouse