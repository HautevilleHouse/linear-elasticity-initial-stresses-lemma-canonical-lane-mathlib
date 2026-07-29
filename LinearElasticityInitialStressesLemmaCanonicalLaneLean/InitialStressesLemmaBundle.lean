import HautevilleHouse.LinearElasticityInitialStressesLemmaCanonicalLaneLean.EnergyMinimization

namespace HautevilleHouse
namespace LinearElasticityInitialStressesLemmaCanonicalLaneLean

structure InitialStressesLemmaBundle {P : InitialStressStrainPackage} {S : SuperpositionPrinciplePackage P} {M : EnergyMinimizationPackage S} where
  initialStressStrainEvidence : InitialStressStrainEvidence P
  superpositionPrincipleEvidence : SuperpositionPrincipleEvidence S
  energyMinimizationEvidence : EnergyMinimizationEvidence M
  allEvidenceCompatible : Prop

def InitialStressesLemmaBundleClosed {P : InitialStressStrainPackage} {S : SuperpositionPrinciplePackage P} {M : EnergyMinimizationPackage S} (B : InitialStressesLemmaBundle S M) : Prop :=
  InitialStressStrainClosed P ∧ SuperpositionPrincipleClosed S ∧ EnergyMinimizationClosed M ∧ B.allEvidenceCompatible

theorem initial_stresses_lemma_bundle_closed {P : InitialStressStrainPackage} {S : SuperpositionPrinciplePackage P} {M : EnergyMinimizationPackage S} (B : InitialStressesLemmaBundle S M) : InitialStressesLemmaBundleClosed B := by
  have h1 := initial_stress_strain_closed_from_evidence P B.initialStressStrainEvidence
  have h2 := superposition_principle_closed_from_evidence S B.superpositionPrincipleEvidence
  have h3 := energy_minimization_closed_from_evidence M B.energyMinimizationEvidence
  exact And.intro h1 (And.intro h2 (And.intro h3 B.allEvidenceCompatible))

end LinearElasticityInitialStressesLemmaCanonicalLaneLean
end HautevilleHouse
