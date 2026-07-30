import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean

structure ElongationFactorCyclePackage where
  factorBinding : Prop
  codonRecognition : Prop
  peptideBondFormation : Prop
  translocation : Prop

structure ElongationFactorCycleEvidence (P : ElongationFactorCyclePackage) where
  factorBindingClosed : P.factorBinding
  codonRecognitionClosed : P.codonRecognition
  peptideBondFormationClosed : P.peptideBondFormation
  translocationClosed : P.translocation

def ElongationFactorCycleClosed (P : ElongationFactorCyclePackage) : Prop :=
  P.factorBinding ∧ P.codonRecognition ∧ P.peptideBondFormation ∧ P.translocation

theorem elongation_factor_cycle_closed_from_evidence (P : ElongationFactorCyclePackage)
    (E : ElongationFactorCycleEvidence P) : ElongationFactorCycleClosed P := by
  exact And.intro E.factorBindingClosed
    (And.intro E.codonRecognitionClosed
      (And.intro E.peptideBondFormationClosed E.translocationClosed))

end MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean
end HautevilleHouse
