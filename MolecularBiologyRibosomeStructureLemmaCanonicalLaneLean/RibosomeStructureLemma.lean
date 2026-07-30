import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean

structure RibosomeStructureLemmaPackage where
  subunitAssociation : Prop
  mrnaBindingChannel : Prop
  trnaBindingSites : Prop
  peptidylTransferaseActivity : Prop
  elongationFactorBinding : Prop
  proofreadingMechanism : Prop

structure RibosomeStructureLemmaEvidence (R : RibosomeStructureLemmaPackage) where
  subunitAssociationClosed : R.subunitAssociation
  mrnaBindingChannelClosed : R.mrnaBindingChannel
  trnaBindingSitesClosed : R.trnaBindingSites
  peptidylTransferaseActivityClosed : R.peptidylTransferaseActivity
  elongationFactorBindingClosed : R.elongationFactorBinding
  proofreadingMechanismClosed : R.proofreadingMechanism

def RibosomeStructureLemmaClosed (R : RibosomeStructureLemmaPackage) : Prop :=
  R.subunitAssociation ∧ R.mrnaBindingChannel ∧
  R.trnaBindingSites ∧ R.peptidylTransferaseActivity ∧
  R.elongationFactorBinding ∧ R.proofreadingMechanism

theorem ribosome_structure_lemma_closed_from_evidence
    (R : RibosomeStructureLemmaPackage) (E : RibosomeStructureLemmaEvidence R) :
    RibosomeStructureLemmaClosed R := by
  exact And.intro E.subunitAssociationClosed
    (And.intro E.mrnaBindingChannelClosed
      (And.intro E.trnaBindingSitesClosed
        (And.intro E.peptidylTransferaseActivityClosed
          (And.intro E.elongationFactorBindingClosed
            E.proofreadingMechanismClosed))))

end MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean
end HautevilleHouse