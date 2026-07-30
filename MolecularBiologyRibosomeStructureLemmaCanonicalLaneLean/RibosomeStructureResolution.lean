import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean.RibosomeBiogenesisPackaging
import MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean.RibosomalRNAFolding
import MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean.PeptideBondFormation
import MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean.RibosomalSubunitAssociation
import MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean.ElongationFactorCycle

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean

structure RibosomeStructureResolutionPackage where
  assembly : RibosomeAssemblyFactor
  rrnaFolding : RRNAFoldingPackage
  peptidylTransferase : PeptidylTransferaseCenter
  subunitAssociation : SubunitAssociationPackage
  elongationCycle : ElongationFactorCyclePackage

structure RibosomeStructureResolutionEvidence (P : RibosomeStructureResolutionPackage) where
  assemblyClosed : AssemblyCompetenceClosed P.assembly
  rrnaFoldingClosed : RRNAFoldingClosed P.rrnaFolding
  peptidylTransferaseClosed : PeptidylTransferaseClosed P.peptidylTransferase
  subunitAssociationClosed : SubunitAssociationClosed P.subunitAssociation
  elongationCycleClosed : ElongationFactorCycleClosed P.elongationCycle

def RibosomeStructureResolutionClosed (P : RibosomeStructureResolutionPackage) : Prop :=
  AssemblyCompetenceClosed P.assembly ∧
  RRNAFoldingClosed P.rrnaFolding ∧
  PeptidylTransferaseClosed P.peptidylTransferase ∧
  SubunitAssociationClosed P.subunitAssociation ∧
  ElongationFactorCycleClosed P.elongationCycle

theorem ribosome_structure_resolution_closed_from_evidence
    (P : RibosomeStructureResolutionPackage)
    (E : RibosomeStructureResolutionEvidence P) :
    RibosomeStructureResolutionClosed P := by
  exact And.intro E.assemblyClosed
    (And.intro E.rrnaFoldingClosed
      (And.intro E.peptidylTransferaseClosed
        (And.intro E.subunitAssociationClosed E.elongationCycleClosed)))

end MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean
end HautevilleHouse
