import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean

structure AtomicModelBuildingPackage where
  densityMapFitting : Prop
  backboneTracing : Prop
  sideChainPlacement : Prop
  modelRefinement : Prop
  validationMetrics : Prop

structure AtomicModelBuildingEvidence (A : AtomicModelBuildingPackage) where
  densityMapFittingClosed : A.densityMapFitting
  backboneTracingClosed : A.backboneTracing
  sideChainPlacementClosed : A.sideChainPlacement
  modelRefinementClosed : A.modelRefinement
  validationMetricsClosed : A.validationMetrics

def AtomicModelBuildingClosed (A : AtomicModelBuildingPackage) : Prop :=
  A.densityMapFitting ∧ A.backboneTracing ∧
  A.sideChainPlacement ∧ A.modelRefinement ∧
  A.validationMetrics

theorem atomic_model_building_closed_from_evidence
    (A : AtomicModelBuildingPackage) (E : AtomicModelBuildingEvidence A) :
    AtomicModelBuildingClosed A := by
  exact And.intro E.densityMapFittingClosed
    (And.intro E.backboneTracingClosed
      (And.intro E.sideChainPlacementClosed
        (And.intro E.modelRefinementClosed E.validationMetricsClosed)))

end MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean
end HautevilleHouse