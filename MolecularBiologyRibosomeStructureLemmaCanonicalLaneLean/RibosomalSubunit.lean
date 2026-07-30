import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean

structure RibosomalSubunitPackage where
  largeSubunit : Type u
  smallSubunit : Type v
  assembly : Type w
  rrnaComponents : Prop
  ribosomalProteins : Prop
  peptidylTransferaseCenter : Prop
  decodingCenter : Prop

structure RibosomalSubunitEvidence (R : RibosomalSubunitPackage) where
  rrnaComponentsClosed : R.rrnaComponents
  ribosomalProteinsClosed : R.ribosomalProteins
  peptidylTransferaseCenterClosed : R.peptidylTransferaseCenter
  decodingCenterClosed : R.decodingCenter

def RibosomalSubunitClosed (R : RibosomalSubunitPackage) : Prop :=
  R.rrnaComponents ∧ R.ribosomalProteins ∧
  R.peptidylTransferaseCenter ∧ R.decodingCenter

theorem ribosomal_subunit_closed_from_evidence
    (R : RibosomalSubunitPackage) (E : RibosomalSubunitEvidence R) :
    RibosomalSubunitClosed R := by
  exact And.intro E.rrnaComponentsClosed
    (And.intro E.ribosomalProteinsClosed
      (And.intro E.peptidylTransferaseCenterClosed E.decodingCenterClosed))

end MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean
end HautevilleHouse