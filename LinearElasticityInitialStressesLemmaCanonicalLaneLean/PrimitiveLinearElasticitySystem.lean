import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesLemmaCanonicalLaneLean

structure PrimitiveElasticBody where
  Point : Type
  displacementField : Type
  strainTensor : Type
  stressTensor : Type
  elasticityTensor : Type
  initialStressTensor : Type
  bodyForces : Type
  boundaryConditions : Prop
  constitutiveLaw : Prop
  equilibriumEquations : Prop
  initialStressPrescribed : Prop
  boundaryConditionsTerm : boundaryConditions
  constitutiveLawTerm : constitutiveLaw
  equilibriumEquationsTerm : equilibriumEquations
  initialStressPrescribedTerm : initialStressPrescribed

structure PrimitiveStrainDisplacementRelation where
  smallStrainApproximation : Prop
  linearCompatibility : Prop
  strainSymmetry : Prop
  displacementGradientRelation : Prop
  smallStrainApproximationTerm : smallStrainApproximation
  linearCompatibilityTerm : linearCompatibility
  strainSymmetryTerm : strainSymmetry
  displacementGradientRelationTerm : displacementGradientRelation

structure PrimitiveStressStrainConstitutiveLaw where
  elasticityTensorSymmetric : Prop
  stressStrainLinearRelation : Prop
  initialStressContribution : Prop
  stressDecomposition : Prop
  elasticityTensorSymmetricTerm : elasticityTensorSymmetric
  stressStrainLinearRelationTerm : stressStrainLinearRelation
  initialStressContributionTerm : initialStressContribution
  stressDecompositionTerm : stressDecomposition

structure PrimitiveEquilibriumSystem where
  balanceOfForces : Prop
  compatibilityOfStrains : Prop
  boundaryTractions : Prop
  balanceOfForcesTerm : balanceOfForces
  compatibilityOfStrainsTerm : compatibilityOfStrains
  boundaryTractionsTerm : boundaryTractions

structure PrimitiveInitialStressState where
  initialStressKnown : Prop
  initialStressField : Type
  initialStressCompatible : Prop
  referenceConfiguration : Prop
  initialStressKnownTerm : initialStressKnown
  initialStressCompatibleTerm : initialStressCompatible
  referenceConfigurationTerm : referenceConfiguration

def PrimitiveInitialStressState.toInitialStressData (S : PrimitiveInitialStressState) : Type := S.initialStressField

end LinearElasticityInitialStressesLemmaCanonicalLaneLean
end HautevilleHouse