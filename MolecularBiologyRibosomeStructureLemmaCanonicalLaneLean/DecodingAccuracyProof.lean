import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean

proof_irrelevance

structure DecodingAccuracyProof where
  initialBinding : Prop
  proofreadingSteps : Nat
  fidelityCheck : Prop
  accommodation : Prop

structure DecodingAccuracyClosed (D : DecodingAccuracyProof) : Prop :=
  D.initialBinding ∧ D.fidelityCheck ∧ D.accommodation

theorem decoding_accuracy_closed (D : DecodingAccuracyProof) :
    DecodingAccuracyClosed D := by
  exact And.intro D.initialBinding (And.intro D.fidelityCheck D.accommodation)

end MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean
end HautevilleHouse