import canonicalLaneMathlib.AdmissibleClass

/-!
# Constitutive Law Package

This module records the linear elastic constitutive law connecting stress and
strain. The package carries Hooke's law, the elasticity tensor, invertibility,
and the stored energy density. All fields are closed by explicit evidence.
-/

namespace HautevilleHouse
namespace LinearElasticityInitialStressesLemmaCanonicalLaneLean

structure ConstitutiveLawPackage where
  elasticityTensor : Type u
  hookeLaw : Prop
  positiveDefiniteness : Prop
  invertibility : Prop
  energyDensity : Prop

structure ConstitutiveLawEvidence (C : ConstitutiveLawPackage) where
  hookeLawClosed : C.hookeLaw
  positiveDefinitenessClosed : C.positiveDefiniteness
  invertibilityClosed : C.invertibility
  energyDensityClosed : C.energyDensity

def ConstitutiveLawClosed (C : ConstitutiveLawPackage) : Prop :=
  C.hookeLaw ∧ C.positiveDefiniteness ∧ C.invertibility ∧ C.energyDensity

theorem constitutive_law_closed_from_evidence (C : ConstitutiveLawPackage)
    (E : ConstitutiveLawEvidence C) : ConstitutiveLawClosed C :=
  And.intro E.hookeLawClosed
    (And.intro E.positiveDefinitenessClosed
      (And.intro E.invertibilityClosed E.energyDensityClosed))

end HautevilleHouse
end LinearElasticityInitialStressesLemmaCanonicalLaneLean
