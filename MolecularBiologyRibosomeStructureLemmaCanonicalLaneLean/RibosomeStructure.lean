import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean

structure RibosomalSubunit where
  largeSubunit : Type u
  smallSubunit : Type v
  assembled : Prop
  assembledTerm : assembled

structure tRNABindingSite where
  aSite : Type u
  pSite : Type v
  eSite : Type w
  bindingFidelity : Prop
  bindingFidelityTerm : bindingFidelity

structure PeptidylTransferaseCenter where
  catalyticActivity : Prop
  substrateSpecificity : Prop
  catalyticActivityTerm : catalyticActivity
  substrateSpecificityTerm : substrateSpecificity

structure RibosomeStructurePackage where
  subunit : RibosomalSubunit
  tRNASites : tRNABindingSite
  ptc : PeptidylTransferaseCenter
  mrnaChannel : Prop
  mrnaChannelTerm : mrnaChannel

structure RibosomeStructureEvidence (R : RibosomeStructurePackage) where
  subunitAssembled : R.subunit.assembled
  tRNASitesClosed : R.tRNASites.bindingFidelity
  ptcActive : R.ptc.catalyticActivity
  mrnaChannelClosed : R.mrnaChannel

def RibosomeStructureClosed (R : RibosomeStructurePackage) : Prop :=
  R.subunit.assembled ∧ R.tRNASites.bindingFidelity ∧ R.ptc.catalyticActivity ∧ R.mrnaChannel

theorem ribosome_structure_closed_from_evidence (R : RibosomeStructurePackage)
    (E : RibosomeStructureEvidence R) : RibosomeStructureClosed R := by
  exact And.intro E.subunitAssembled (And.intro E.tRNASitesClosed (And.intro E.ptcActive E.mrnaChannelClosed))

end MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean
end HautevilleHouse