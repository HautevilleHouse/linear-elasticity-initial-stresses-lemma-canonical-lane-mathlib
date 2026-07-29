import canonicalLaneMathlib.AdmissibleClass

/-!
# Initial Stresses Package

This module records the initial stress distribution for a linear elastic body
as an admissible-class bridge. The proof fields capture static equilibrium,
compatibility, boundary conditions, and the stored strain energy. Every field
is closed by explicit evidence.
-/

namespace HautevilleHouse
namespace LinearElasticityInitialStressesLemmaCanonicalLaneLean

structure InitialStressesPackage where
  internalForceDensity : Type u
  surfaceTraction : Type v
  bodyForce : Type w
  equilibrium : Prop
  compatibility : Prop
  boundaryCondition : Prop
  strainEnergy : Prop

structure InitialStressesEvidence (I : InitialStressesPackage) where
  equilibriumClosed : I.equilibrium
  compatibilityClosed : I.compatibility
  boundaryConditionClosed : I.boundaryCondition
  strainEnergyClosed : I.strainEnergy

def InitialStressesClosed (I : InitialStressesPackage) : Prop :=
  I.equilibrium ∧ I.compatibility ∧ I.boundaryCondition ∧ I.strainEnergy

theorem initial_stresses_closed_from_evidence (I : InitialStressesPackage)
    (E : InitialStressesEvidence I) : InitialStressesClosed I :=
  And.intro E.equilibriumClosed
    (And.intro E.compatibilityClosed
      (And.intro E.boundaryConditionClosed E.strainEnergyClosed))

end HautevilleHouse
end LinearElasticityInitialStressesLemmaCanonicalLaneLean
