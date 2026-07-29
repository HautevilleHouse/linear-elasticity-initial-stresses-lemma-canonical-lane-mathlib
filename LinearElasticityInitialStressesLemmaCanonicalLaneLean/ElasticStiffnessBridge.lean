import canonicalLaneMathlib.AdmissibleClass
import LinearElasticityInitialStressesLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace LinearElasticityInitialStressesLemmaCanonicalLaneLean

structure ElasticStiffnessPackage where
  stiffnessTensor : Type u
  complianceTensor : Type v
  isotropicComponents : Prop
  anisotropicCorrections : Prop
  initialStrainEffect : Prop

structure ElasticStiffnessEvidence (P : ElasticStiffnessPackage) where
  stiffnessTensorDefined : P.stiffnessTensor
  complianceTensorDefined : P.complianceTensor
  isotropicComponentsClosed : P.isotropicComponents
  anisotropicCorrectionsClosed : P.anisotropicCorrections
  initialStrainEffectClosed : P.initialStrainEffect

def ElasticStiffnessClosed (P : ElasticStiffnessPackage) : Prop :=
  P.stiffnessTensor ∧ P.complianceTensor ∧ P.isotropicComponents ∧ P.anisotropicCorrections ∧ P.initialStrainEffect

theorem elastic_stiffness_closed_from_evidence (P : ElasticStiffnessPackage) (E : ElasticStiffnessEvidence P) :
    ElasticStiffnessClosed P := by
  exact And.intro E.stiffnessTensorDefined
    (And.intro E.complianceTensorDefined
      (And.intro E.isotropicComponentsClosed
        (And.intro E.anisotropicCorrectionsClosed E.initialStrainEffectClosed)))

end LinearElasticityInitialStressesLemmaCanonicalLaneLean
end HautevilleHouse