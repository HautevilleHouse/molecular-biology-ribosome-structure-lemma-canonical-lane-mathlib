import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean

structure PeptidylTransferaseCenter where
  catalyticActivity : Prop
  substrateBinding : Prop
  productRelease : Prop
  rateEnhancement : Prop

structure PeptidylTransferaseEvidence (P : PeptidylTransferaseCenter) where
  catalyticActivityClosed : P.catalyticActivity
  substrateBindingClosed : P.substrateBinding
  productReleaseClosed : P.productRelease
  rateEnhancementClosed : P.rateEnhancement

def PeptidylTransferaseClosed (P : PeptidylTransferaseCenter) : Prop :=
  P.catalyticActivity ∧ P.substrateBinding ∧ P.productRelease ∧ P.rateEnhancement

theorem peptidyl_transferase_closed_from_evidence (P : PeptidylTransferaseCenter)
    (E : PeptidylTransferaseEvidence P) : PeptidylTransferaseClosed P := by
  exact And.intro E.catalyticActivityClosed
    (And.intro E.substrateBindingClosed
      (And.intro E.productReleaseClosed E.rateEnhancementClosed))

end MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean
end HautevilleHouse
