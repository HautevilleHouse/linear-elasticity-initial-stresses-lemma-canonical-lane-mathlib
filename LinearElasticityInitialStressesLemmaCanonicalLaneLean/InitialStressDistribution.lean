import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesLemmaCanonicalLaneLean

structure InitialStressDistribution where
  stressField : Type u
  equilibriumCondition : Prop
  tractionBoundary : Prop
  bodyForce : Prop

structure InitialStressDistributionEvidence (σ : InitialStressDistribution) where
  equilibriumClosed : σ.equilibriumCondition
  tractionBoundaryClosed : σ.tractionBoundary
  bodyForceClosed : σ.bodyForce

def InitialStressDistributionClosed (σ : InitialStressDistribution) : Prop :=
  σ.equilibriumCondition ∧ σ.tractionBoundary ∧ σ.bodyForce

theorem initial_stress_distribution_closed_from_evidence
    (σ : InitialStressDistribution) (E : InitialStressDistributionEvidence σ) :
    InitialStressDistributionClosed σ := by
  exact And.intro E.equilibriumClosed (And.intro E.tractionBoundaryClosed E.bodyForceClosed)

end LinearElasticityInitialStressesLemmaCanonicalLaneLean
end HautevilleHouse