import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean

structure SubunitAssociationPackage where
  largeSubunit : Prop
  smallSubunit : Prop
  initiationFactors : Prop
  gtpHydrolysis : Prop

structure SubunitAssociationEvidence (P : SubunitAssociationPackage) where
  largeSubunitClosed : P.largeSubunit
  smallSubunitClosed : P.smallSubunit
  initiationFactorsClosed : P.initiationFactors
  gtpHydrolysisClosed : P.gtpHydrolysis

def SubunitAssociationClosed (P : SubunitAssociationPackage) : Prop :=
  P.largeSubunit ∧ P.smallSubunit ∧ P.initiationFactors ∧ P.gtpHydrolysis

theorem subunit_association_closed_from_evidence (P : SubunitAssociationPackage)
    (E : SubunitAssociationEvidence P) : SubunitAssociationClosed P := by
  exact And.intro E.largeSubunitClosed
    (And.intro E.smallSubunitClosed
      (And.intro E.initiationFactorsClosed E.gtpHydrolysisClosed))

end MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean
end HautevilleHouse
