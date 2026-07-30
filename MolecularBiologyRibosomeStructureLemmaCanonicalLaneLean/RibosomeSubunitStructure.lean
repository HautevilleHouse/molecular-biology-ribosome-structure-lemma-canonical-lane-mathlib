import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean

structure PrimitiveRibosomeSubunit where
  subunit : Type
  largeSubunit : Prop
  smallSubunit : Prop
  spectralResolution : Prop
  cryoEMMap : Prop
  atomicModelBuilt : Prop
  largeSubunitTerm : largeSubunit
  smallSubunitTerm : smallSubunit
  spectralResolutionTerm : spectralResolution
  cryoEMMapTerm : cryoEMMap
  atomicModelBuiltTerm : atomicModelBuilt

structure PrimitivePeptidylTransferaseCenter where
  subunit : PrimitiveRibosomeSubunit
  catalyticActivity : Prop
  tRNABindingSites : Prop
  peptideBondFormation : Prop
  catalyticActivityTerm : catalyticActivity
  tRNABindingSitesTerm : tRNABindingSites
  peptideBondFormationTerm : peptideBondFormation

structure PrimitiveRibosomeStructure (
  {S : PrimitiveRibosomeSubunit}
  (P : PrimitivePeptidylTransferaseCenter S)
) where
  subunitAssembly : Prop
  structuralConservation : Prop
  functionalCoreIdentified : Prop
  subunitAssemblyTerm : subunitAssembly
  structuralConservationTerm : structuralConservation
  functionalCoreIdentifiedTerm : functionalCoreIdentified

def RibosomeSubunitStructureEvidence {S : PrimitiveRibosomeSubunit}
    {P : PrimitivePeptidylTransferaseCenter S}
    (R : PrimitiveRibosomeStructure P) : Prop :=
  R.subunitAssembly ∧ R.structuralConservation ∧ R.functionalCoreIdentified

theorem ribosome_structure_closed_from_evidence {S : PrimitiveRibosomeSubunit}
    {P : PrimitivePeptidylTransferaseCenter S}
    (R : PrimitiveRibosomeStructure P) (E : RibosomeSubunitStructureEvidence R) :
    R.subunitAssembly ∧ R.structuralConservation ∧ R.functionalCoreIdentified := by
  exact E

end MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean
end HautevilleHouse