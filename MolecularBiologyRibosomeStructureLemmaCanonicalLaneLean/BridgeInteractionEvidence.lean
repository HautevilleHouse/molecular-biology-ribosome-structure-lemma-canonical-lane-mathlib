import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean

structure BridgeInteractionEvidence where
  intersubunitBridges : List (String × String)
  bridgeStability : Prop
  subunitAssociation : Prop

structure BridgeInteractionEvidenceClosed (B : BridgeInteractionEvidence) : Prop :=
  B.bridgeStability ∧ B.subunitAssociation

theorem bridge_interaction_evidence_closed (B : BridgeInteractionEvidence) :
    BridgeInteractionEvidenceClosed B := by
  exact And.intro B.bridgeStability B.subunitAssociation

end MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean
end HautevilleHouse