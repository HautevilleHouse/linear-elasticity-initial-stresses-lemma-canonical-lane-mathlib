import HautevilleHouse.LinearElasticityInitialStressesLemmaCanonicalLaneLean.InitialStressesAdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesLemmaCanonicalLaneLean

structure InitialStressStrainPackage where
  domain : Type u
  displacement : Type v
  strainTensor : Type w
  stressTensor : Type x
  initialStress : stressTensor
  linearElasticLaw : Prop
  smallStrainAssumption : Prop
  equilibriumEquations : Prop

structure InitialStressStrainEvidence (P : InitialStressStrainPackage) where
  linearElasticLawClosed : P.linearElasticLaw
  smallStrainAssumptionClosed : P.smallStrainAssumption
  equilibriumEquationsClosed : P.equilibriumEquations

def InitialStressStrainClosed (P : InitialStressStrainPackage) : Prop :=
  P.linearElasticLaw ∧ P.smallStrainAssumption ∧ P.equilibriumEquations

theorem initial_stress_strain_closed_from_evidence (P : InitialStressStrainPackage) (E : InitialStressStrainEvidence P) : InitialStressStrainClosed P := by
  exact And.intro E.linearElasticLawClosed (And.intro E.smallStrainAssumptionClosed E.equilibriumEquationsClosed)

end LinearElasticityInitialStressesLemmaCanonicalLaneLean
end HautevilleHouse
