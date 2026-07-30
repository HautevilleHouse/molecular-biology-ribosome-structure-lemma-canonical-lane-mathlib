import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean

structure CryoEMSamplePreparationPackage where
  samplePurification : Prop
  gridVitrification : Prop
  iceThicknessControl : Prop
  particleConcentration : Prop
  beamInducedMotionMitigation : Prop

structure CryoEMSamplePreparationEvidence (C : CryoEMSamplePreparationPackage) where
  samplePurificationClosed : C.samplePurification
  gridVitrificationClosed : C.gridVitrification
  iceThicknessControlClosed : C.iceThicknessControl
  particleConcentrationClosed : C.particleConcentration
  beamInducedMotionMitigationClosed : C.beamInducedMotionMitigation

def CryoEMSamplePreparationClosed (C : CryoEMSamplePreparationPackage) : Prop :=
  C.samplePurification ∧ C.gridVitrification ∧
  C.iceThicknessControl ∧ C.particleConcentration ∧
  C.beamInducedMotionMitigation

theorem cryo_em_sample_preparation_closed_from_evidence
    (C : CryoEMSamplePreparationPackage) (E : CryoEMSamplePreparationEvidence C) :
    CryoEMSamplePreparationClosed C := by
  exact And.intro E.samplePurificationClosed
    (And.intro E.gridVitrificationClosed
      (And.intro E.iceThicknessControlClosed
        (And.intro E.particleConcentrationClosed
          E.beamInducedMotionMitigationClosed)))

end MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean
end HautevilleHouse