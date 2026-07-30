import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean

structure TranslationInitiationComplexPackage where
  mrnaBinding : Prop
  initiatorTrnaBinding : Prop
  initiationFactorsBinding : Prop
  startCodonRecognition : Prop
  mrnaBindingClosed : mrnaBinding
  initiatorTrnaBindingClosed : initiatorTrnaBinding
  initiationFactorsBindingClosed : initiationFactorsBinding
  startCodonRecognitionClosed : startCodonRecognition

structure TranslationInitiationComplexEvidence 
  (P : TranslationInitiationComplexPackage) where
  mrnaBindingClosed : P.mrnaBinding
  initiatorTrnaBindingClosed : P.initiatorTrnaBinding
  initiationFactorsBindingClosed : P.initiationFactorsBinding
  startCodonRecognitionClosed : P.startCodonRecognition

def TranslationInitiationComplexClosed (P : TranslationInitiationComplexPackage) : Prop :=
  P.mrnaBinding ∧ P.initiatorTrnaBinding ∧
  P.initiationFactorsBinding ∧ P.startCodonRecognition

theorem translation_initiation_complex_closed_from_evidence
    (P : TranslationInitiationComplexPackage)
    (E : TranslationInitiationComplexEvidence P) :
    TranslationInitiationComplexClosed P := by
  exact And.intro E.mrnaBindingClosed
    (And.intro E.initiatorTrnaBindingClosed
      (And.intro E.initiationFactorsBindingClosed
        E.startCodonRecognitionClosed))

end MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean
end HautevilleHouse