import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesLemmaCanonicalLaneLean

def ConstrainedInitialStressesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_initial_stresses_endgame (A : AdmissibleClass) :
    ConstrainedInitialStressesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end LinearElasticityInitialStressesLemmaCanonicalLaneLean
end HautevilleHouse