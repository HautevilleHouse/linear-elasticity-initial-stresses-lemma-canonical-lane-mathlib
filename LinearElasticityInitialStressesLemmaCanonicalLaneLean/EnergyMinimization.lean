import HautevilleHouse.LinearElasticityInitialStressesLemmaCanonicalLaneLean.SuperpositionPrinciple

namespace HautevilleHouse
namespace LinearElasticityInitialStressesLemmaCanonicalLaneLean

structure EnergyMinimizationPackage {P : InitialStressStrainPackage} (S : SuperpositionPrinciplePackage P) where
  potentialEnergyFunctional : Type u
  equilibriumViaMinimization : Prop
  initialStressContribution : Prop
  variationalPrinciple : Prop

structure EnergyMinimizationEvidence {P : InitialStressStrainPackage} {S : SuperpositionPrinciplePackage P} (M : EnergyMinimizationPackage S) where
  equilibriumViaMinimizationClosed : M.equilibriumViaMinimization
  initialStressContributionClosed : M.initialStressContribution
  variationalPrincipleClosed : M.variationalPrinciple

def EnergyMinimizationClosed {P : InitialStressStrainPackage} {S : SuperpositionPrinciplePackage P} (M : EnergyMinimizationPackage S) : Prop :=
  M.equilibriumViaMinimization ∧ M.initialStressContribution ∧ M.variationalPrinciple

theorem energy_minimization_closed_from_evidence {P : InitialStressStrainPackage} {S : SuperpositionPrinciplePackage P} (M : EnergyMinimizationPackage S) (E : EnergyMinimizationEvidence M) : EnergyMinimizationClosed M := by
  exact And.intro E.equilibriumViaMinimizationClosed (And.intro E.initialStressContributionClosed E.variationalPrincipleClosed)

end LinearElasticityInitialStressesLemmaCanonicalLaneLean
end HautevilleHouse
