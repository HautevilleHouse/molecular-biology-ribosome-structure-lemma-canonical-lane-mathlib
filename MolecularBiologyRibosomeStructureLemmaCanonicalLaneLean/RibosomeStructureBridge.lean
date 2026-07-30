import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean

structure RibosomeAdmittedObject where
  structureClosed : Prop
  structureClosedTerm : structureClosed

def RibosomeWitnessClosed (O : RibosomeAdmittedObject) : Prop :=
  O.structureClosed

end MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean
end HautevilleHouse