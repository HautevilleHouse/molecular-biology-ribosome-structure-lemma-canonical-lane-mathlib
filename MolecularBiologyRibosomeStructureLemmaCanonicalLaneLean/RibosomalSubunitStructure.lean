import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean

structure RibosomalSubunitPackage where
  largeSubunitType : Type u
  smallSubunitType : Type v
  subunitAssociation : Prop
  rnaComponents : Prop
  proteinComponents : Prop
  subunitAssociationClosed : subunitAssociation
  rnaComponentsClosed : rnaComponents
  proteinComponentsClosed : proteinComponents

structure RibosomalSubunitEvidence (P : RibosomalSubunitPackage) where
  subunitAssociationClosed : P.subunitAssociation
  rnaComponentsClosed : P.rnaComponents
  proteinComponentsClosed : P.proteinComponents

def RibosomalSubunitClosed (P : RibosomalSubunitPackage) : Prop :=
  P.subunitAssociation ∧ P.rnaComponents ∧ P.proteinComponents

theorem ribosomal_subunit_closed_from_evidence
    (P : RibosomalSubunitPackage) (E : RibosomalSubunitEvidence P) :
    RibosomalSubunitClosed P := by
  exact And.intro E.subunitAssociationClosed
    (And.intro E.rnaComponentsClosed E.proteinComponentsClosed)

end MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean
end HautevilleHouse