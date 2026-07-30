import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean

def ConstrainedRibosomeStructureClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_ribosome_structure_endgame (A : AdmissibleClass) :
    ConstrainedRibosomeStructureClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean
end HautevilleHouse