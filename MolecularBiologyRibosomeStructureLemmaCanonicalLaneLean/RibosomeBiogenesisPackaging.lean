import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean

structure RibosomeAssemblyFactor where
  factorName : String
  bindingSite : Prop
  rnaMaturation : Prop
  assemblyCompetence : Prop

structure AssemblyCompetenceEvidence (F : RibosomeAssemblyFactor) where
  bindingSiteClosed : F.bindingSite
  rnaMaturationClosed : F.rnaMaturation
  assemblyCompetenceClosed : F.assemblyCompetence

def AssemblyCompetenceClosed (F : RibosomeAssemblyFactor) : Prop :=
  F.bindingSite ∧ F.rnaMaturation ∧ F.assemblyCompetence

theorem assembly_competence_closed_from_evidence (F : RibosomeAssemblyFactor)
    (E : AssemblyCompetenceEvidence F) : AssemblyCompetenceClosed F := by
  exact And.intro E.bindingSiteClosed (And.intro E.rnaMaturationClosed E.assemblyCompetenceClosed)

end MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean
end HautevilleHouse
