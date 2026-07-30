import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean

structure RibosomeMRNAtRNAInteractionPackage where
  mrnaChannel : Prop
  trnaBindingSites : Prop
  codonAnticodonPairing : Prop
  translocation : Prop
  mrnaChannelClosed : mrnaChannel
  trnaBindingSitesClosed : trnaBindingSites
  codonAnticodonPairingClosed : codonAnticodonPairing
  translocationClosed : translocation

structure RibosomeMRNAtRNAInteractionEvidence
  (P : RibosomeMRNAtRNAInteractionPackage) where
  mrnaChannelClosed : P.mrnaChannel
  trnaBindingSitesClosed : P.trnaBindingSites
  codonAnticodonPairingClosed : P.codonAnticodonPairing
  translocationClosed : P.translocation

def RibosomeMRNAtRNAInteractionClosed
  (P : RibosomeMRNAtRNAInteractionPackage) : Prop :=
  P.mrnaChannel ∧ P.trnaBindingSites ∧
  P.codonAnticodonPairing ∧ P.translocation

theorem ribosome_mrna_trna_interaction_closed_from_evidence
    (P : RibosomeMRNAtRNAInteractionPackage)
    (E : RibosomeMRNAtRNAInteractionEvidence P) :
    RibosomeMRNAtRNAInteractionClosed P := by
  exact And.intro E.mrnaChannelClosed
    (And.intro E.trnaBindingSitesClosed
      (And.intro E.codonAnticodonPairingClosed
        E.translocationClosed))

end MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean
end HautevilleHouse