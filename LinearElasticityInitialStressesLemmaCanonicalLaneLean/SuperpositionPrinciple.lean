import HautevilleHouse.LinearElasticityInitialStressesLemmaCanonicalLaneLean.InitialStressStrainAnalysis

namespace HautevilleHouse
namespace LinearElasticityInitialStressesLemmaCanonicalLaneLean

structure SuperpositionPrinciplePackage (P : InitialStressStrainPackage) where
  linearityAssumption : Prop
  decompositionValid : Prop
  totalStressEqualsInitialPlusApplied : Prop
  superpositionHolds : Prop

structure SuperpositionPrincipleEvidence {P : InitialStressStrainPackage} (S : SuperpositionPrinciplePackage P) where
  linearityAssumptionClosed : S.linearityAssumption
  decompositionValidClosed : S.decompositionValid
  totalStressEqualsInitialPlusAppliedClosed : S.totalStressEqualsInitialPlusApplied
  superpositionHoldsClosed : S.superpositionHolds

def SuperpositionPrincipleClosed {P : InitialStressStrainPackage} (S : SuperpositionPrinciplePackage P) : Prop :=
  S.linearityAssumption ∧ S.decompositionValid ∧ S.totalStressEqualsInitialPlusApplied ∧ S.superpositionHolds

theorem superposition_principle_closed_from_evidence {P : InitialStressStrainPackage} (S : SuperpositionPrinciplePackage P) (E : SuperpositionPrincipleEvidence S) : SuperpositionPrincipleClosed S := by
  exact And.intro E.linearityAssumptionClosed (And.intro E.decompositionValidClosed (And.intro E.totalStressEqualsInitialPlusAppliedClosed E.superpositionHoldsClosed))

end LinearElasticityInitialStressesLemmaCanonicalLaneLean
end HautevilleHouse
