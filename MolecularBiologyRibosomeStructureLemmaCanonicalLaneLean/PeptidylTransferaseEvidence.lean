import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean

structure PeptidylTransferaseEvidence where
  catalyticMechanism : Prop
  transitionStateStabilization : Prop
  productRelease : Prop

structure PeptidylTransferaseEvidenceClosed (E : PeptidylTransferaseEvidence) : Prop :=
  E.catalyticMechanism ∧ E.transitionStateStabilization ∧ E.productRelease

theorem peptidyl_transferase_evidence_closed (E : PeptidylTransferaseEvidence) :
    PeptidylTransferaseEvidenceClosed E := by
  exact And.intro E.catalyticMechanism (And.intro E.transitionStateStabilization E.productRelease)

end MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean
end HautevilleHouse