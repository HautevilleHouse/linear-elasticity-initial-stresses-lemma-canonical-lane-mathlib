import canonicalLaneMathlib.AdmissibleClass
import LinearElasticityInitialStressesLemmaCanonicalLaneLean.ElasticStiffnessBridge

namespace HautevilleHouse
namespace LinearElasticityInitialStressesLemmaCanonicalLaneLean

structure InitialStressEquilibriumPackage {P : ElasticStiffnessPackage} where
  stressField : Type u
  bodyForce : Type v
  equilibriumEquation : Prop
  compatibilityCondition : Prop
  initialStressField : Prop

structure InitialStressEquilibriumEvidence {P : ElasticStiffnessPackage} (Q : InitialStressEquilibriumPackage P) where
  stressFieldDefined : Q.stressField
  bodyForceDefined : Q.bodyForce
  equilibriumEquationClosed : Q.equilibriumEquation
  compatibilityConditionClosed : Q.compatibilityCondition
  initialStressFieldClosed : Q.initialStressField

def InitialStressEquilibriumClosed {P : ElasticStiffnessPackage} (Q : InitialStressEquilibriumPackage P) : Prop :=
  Q.stressField ∧ Q.bodyForce ∧ Q.equilibriumEquation ∧ Q.compatibilityCondition ∧ Q.initialStressField

theorem initial_stress_equilibrium_closed_from_evidence
    {P : ElasticStiffnessPackage} (Q : InitialStressEquilibriumPackage P)
    (E : InitialStressEquilibriumEvidence Q) : InitialStressEquilibriumClosed Q := by
  exact And.intro E.stressFieldDefined
    (And.intro E.bodyForceDefined
      (And.intro E.equilibriumEquationClosed
        (And.intro E.compatibilityConditionClosed E.initialStressFieldClosed)))

end LinearElasticityInitialStressesLemmaCanonicalLaneLean
end HautevilleHouse