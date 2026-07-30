import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean.RibosomeStructure
import MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean.TranslationElongationFactor
import MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean.PeptideBondFormation

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean

structure RibosomeAdmittedObject where
  ribosomeStructure : RibosomeStructurePackage
  elongationFactors : TranslationElongationFactorPackage
  peptideBond : PeptideBondFormationPackage
  structureEvidence : RibosomeStructureEvidence ribosomeStructure
  elongationEvidence : TranslationElongationFactorEvidence elongationFactors
  peptideEvidence : PeptideBondFormationEvidence peptideBond
  conclusion : RibosomeStructureClosed ribosomeStructure ∧
    TranslationElongationFactorClosed elongationFactors ∧
    PeptideBondFormationClosed peptideBond
  conclusionTerm : conclusion

structure RibosomeEndgameState where
  object : RibosomeAdmittedObject

def RibosomeWitnessClosed (O : RibosomeAdmittedObject) : Prop :=
  O.conclusion

end MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean
end HautevilleHouse