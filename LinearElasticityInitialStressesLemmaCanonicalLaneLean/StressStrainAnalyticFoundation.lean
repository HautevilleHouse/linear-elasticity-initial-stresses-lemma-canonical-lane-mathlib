import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesLemmaCanonicalLaneLean

structure StressStrainAnalyticFoundation where
  primitiveBody : PrimitiveElasticBody
  constitutiveEvidence : PrimitiveStressStrainConstitutiveLaw
  equilibriumEvidence : PrimitiveEquilibriumSystem
  initialStressEvidence : PrimitiveInitialStressState

def StressStrainAnalyticFoundation.initialStressAdmissible (A : AdmissibleClass) (F : StressStrainAnalyticFoundation) : Prop :=
  F.initialStressEvidence.initialStressKnown ∧
  F.initialStressEvidence.initialStressCompatible ∧
  F.constitutiveEvidence.initialStressContribution

theorem stress_strain_foundation_initial_stress_admissible
    (A : AdmissibleClass) (F : StressStrainAnalyticFoundation) :
    F.initialStressAdmissible A := by
  exact And.intro F.initialStressEvidence.initialStressKnownTerm
    (And.intro F.initialStressEvidence.initialStressCompatibleTerm
      F.constitutiveEvidence.initialStressContributionTerm)

end LinearElasticityInitialStressesLemmaCanonicalLaneLean
end HautevilleHouse