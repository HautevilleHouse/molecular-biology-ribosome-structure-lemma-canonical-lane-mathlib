import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean

inductive tRNASite : Type
  | A_site
  | P_site
  | E_site

structure tRNABindingMechanism where
  anticodonLoop : Prop
  acceptorStem : Prop
  elongationFactorG : Prop

structure tRNABindingEvidence (B : tRNABindingMechanism) where
  anticodonLoopClosed : B.anticodonLoop
  acceptorStemClosed : B.acceptorStem
  elongationFactorGClosed : B.elongationFactorG

def tRNABindingMechanismClosed (B : tRNABindingMechanism) : Prop :=
  B.anticodonLoop ∧ B.acceptorStem ∧ B.elongationFactorG

theorem trna_binding_mechanism_closed (B : tRNABindingMechanism)
    (E : tRNABindingEvidence B) : tRNABindingMechanismClosed B := by
  exact And.intro E.anticodonLoopClosed
    (And.intro E.acceptorStemClosed E.elongationFactorGClosed)

end MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean
end HautevilleHouse