import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean

structure SingleParticleReconstructionPackage where
  particleProjections : Type u
  ctfCorrection : Prop
  orientationDetermination : Prop
  threeDReconstruction : Prop
  resolutionAssessment : Prop

structure SingleParticleReconstructionEvidence (S : SingleParticleReconstructionPackage) where
  ctfCorrectionClosed : S.ctfCorrection
  orientationDeterminationClosed : S.orientationDetermination
  threeDReconstructionClosed : S.threeDReconstruction
  resolutionAssessmentClosed : S.resolutionAssessment

def SingleParticleReconstructionClosed (S : SingleParticleReconstructionPackage) : Prop :=
  S.ctfCorrection ∧ S.orientationDetermination ∧
  S.threeDReconstruction ∧ S.resolutionAssessment

theorem single_particle_reconstruction_closed_from_evidence
    (S : SingleParticleReconstructionPackage) (E : SingleParticleReconstructionEvidence S) :
    SingleParticleReconstructionClosed S := by
  exact And.intro E.ctfCorrectionClosed
    (And.intro E.orientationDeterminationClosed
      (And.intro E.threeDReconstructionClosed E.resolutionAssessmentClosed))

end MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean
end HautevilleHouse