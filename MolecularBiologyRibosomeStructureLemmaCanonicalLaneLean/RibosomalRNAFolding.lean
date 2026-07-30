import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean

structure RRNAFoldingPackage where
  secondaryStructure : Prop
  tertiaryStructure : Prop
  modifiedNucleotides : Prop
  foldingKinetics : Prop

structure RRNAFoldingEvidence (P : RRNAFoldingPackage) where
  secondaryStructureClosed : P.secondaryStructure
  tertiaryStructureClosed : P.tertiaryStructure
  modifiedNucleotidesClosed : P.modifiedNucleotides
  foldingKineticsClosed : P.foldingKinetics

def RRNAFoldingClosed (P : RRNAFoldingPackage) : Prop :=
  P.secondaryStructure ∧ P.tertiaryStructure ∧ P.modifiedNucleotides ∧ P.foldingKinetics

theorem rrna_folding_closed_from_evidence (P : RRNAFoldingPackage)
    (E : RRNAFoldingEvidence P) : RRNAFoldingClosed P := by
  exact And.intro E.secondaryStructureClosed
    (And.intro E.tertiaryStructureClosed
      (And.intro E.modifiedNucleotidesClosed E.foldingKineticsClosed))

end MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean
end HautevilleHouse
