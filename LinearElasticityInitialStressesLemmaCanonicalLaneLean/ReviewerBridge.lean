import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesLemmaCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile :=
  [{ path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "a1b2c3d4", present := true },
   { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "e5f6g7h8", present := true }]

def reviewerChainSteps : List ReviewerChainStep :=
  [{ index := 1, label := "EG1" },
   { index := 2, label := "EG2" }]

def reviewerClosureGates : List ReviewerClosureGate :=
  [{ gate := "LE_G1", constant := "initial_stress_magnitude" },
   { gate := "LE_G2", constant := "elastic_modulus" }]

end LinearElasticityInitialStressesLemmaCanonicalLaneLean
end HautevilleHouse