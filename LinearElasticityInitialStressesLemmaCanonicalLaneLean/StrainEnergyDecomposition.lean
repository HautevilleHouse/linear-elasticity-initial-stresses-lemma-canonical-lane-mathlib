import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesLemmaCanonicalLaneLean

structure StrainEnergyDecomposition where
  elasticEnergy : Type u
  initialStressEnergy : Type v
  interactionEnergy : Prop
  positiveDefiniteElastic : Prop
  initialStressBounded : Prop

structure StrainEnergyDecompositionEvidence (W : StrainEnergyDecomposition) where
  interactionEnergyClosed : W.interactionEnergy
  positiveDefiniteElasticClosed : W.positiveDefiniteElastic
  initialStressBoundedClosed : W.initialStressBounded

def StrainEnergyDecompositionClosed (W : StrainEnergyDecomposition) : Prop :=
  W.interactionEnergy ∧ W.positiveDefiniteElastic ∧ W.initialStressBounded

theorem strain_energy_decomposition_closed_from_evidence
    (W : StrainEnergyDecomposition) (E : StrainEnergyDecompositionEvidence W) :
    StrainEnergyDecompositionClosed W := by
  exact And.intro E.interactionEnergyClosed (And.intro E.positiveDefiniteElasticClosed E.initialStressBoundedClosed)

end LinearElasticityInitialStressesLemmaCanonicalLaneLean
end HautevilleHouse