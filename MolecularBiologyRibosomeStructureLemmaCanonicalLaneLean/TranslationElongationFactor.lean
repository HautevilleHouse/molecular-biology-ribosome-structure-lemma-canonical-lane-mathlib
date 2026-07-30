import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean

structure EF_Tu where
  gtpBinding : Prop
  aminoacylTRNABinding : Prop
  gtpHydrolysis : Prop
  gtpBindingTerm : gtpBinding
  aminoacylTRNABindingTerm : aminoacylTRNABinding
  gtpHydrolysisTerm : gtpHydrolysis

structure EF_G where
  ribosomeBinding : Prop
  translocationActivity : Prop
  gtpHydrolysis : Prop
  ribosomeBindingTerm : ribosomeBinding
  translocationActivityTerm : translocationActivity
  gtpHydrolysisTerm : gtpHydrolysis

structure TranslationElongationFactorPackage where
  efTu : EF_Tu
  efG : EF_G
  coordinateFunction : Prop
  coordinateFunctionTerm : coordinateFunction

structure TranslationElongationFactorEvidence (E : TranslationElongationFactorPackage) where
  efTuClosed : E.efTu.gtpBinding ∧ E.efTu.aminoacylTRNABinding ∧ E.efTu.gtpHydrolysis
  efGClosed : E.efG.ribosomeBinding ∧ E.efG.translocationActivity ∧ E.efG.gtpHydrolysis
  coordinateFunctionClosed : E.coordinateFunction

def TranslationElongationFactorClosed (E : TranslationElongationFactorPackage) : Prop :=
  (E.efTu.gtpBinding ∧ E.efTu.aminoacylTRNABinding ∧ E.efTu.gtpHydrolysis) ∧
  (E.efG.ribosomeBinding ∧ E.efG.translocationActivity ∧ E.efG.gtpHydrolysis) ∧
  E.coordinateFunction

theorem translation_elongation_factor_closed_from_evidence
    (E : TranslationElongationFactorPackage)
    (Ev : TranslationElongationFactorEvidence E) : TranslationElongationFactorClosed E := by
  exact And.intro Ev.efTuClosed (And.intro Ev.efGClosed Ev.coordinateFunctionClosed)

end MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean
end HautevilleHouse