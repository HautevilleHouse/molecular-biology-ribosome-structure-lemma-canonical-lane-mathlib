import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean

structure RibosomeFunctionalCenters where
  peptidylTransferase : Prop
  decodingCenter : Prop
  exitTunnel : Prop

structure RibosomeFunctionalCentersEvidence (C : RibosomeFunctionalCenters) where
  peptidylTransferaseClosed : C.peptidylTransferase
  decodingCenterClosed : C.decodingCenter
  exitTunnelClosed : C.exitTunnel

def RibosomeFunctionalCentersClosed (C : RibosomeFunctionalCenters) : Prop :=
  C.peptidylTransferase ∧ C.decodingCenter ∧ C.exitTunnel

theorem ribosome_functional_centers_closed (C : RibosomeFunctionalCenters)
    (E : RibosomeFunctionalCentersEvidence C) : RibosomeFunctionalCentersClosed C := by
  exact And.intro E.peptidylTransferaseClosed
    (And.intro E.decodingCenterClosed E.exitTunnelClosed)

end MolecularBiologyRibosomeStructureLemmaCanonicalLaneLean
end HautevilleHouse