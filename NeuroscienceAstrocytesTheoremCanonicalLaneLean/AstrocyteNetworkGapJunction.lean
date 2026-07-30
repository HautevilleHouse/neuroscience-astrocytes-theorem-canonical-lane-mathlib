import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAstrocytesTheoremCanonicalLaneLean

structure AstrocyteNetworkGapJunctionPackage where
  connexinExpression : Prop
  gapJunctionPermeability : Prop
  intercellularCalciumWave : Prop
  metabolicCoupling : Prop
  networkSynchronization : Prop

structure AstrocyteNetworkGapJunctionEvidence (G : AstrocyteNetworkGapJunctionPackage) where
  connexinExpressionClosed : G.connexinExpression
  gapJunctionPermeabilityClosed : G.gapJunctionPermeability
  intercellularCalciumWaveClosed : G.intercellularCalciumWave
  metabolicCouplingClosed : G.metabolicCoupling
  networkSynchronizationClosed : G.networkSynchronization

def AstrocyteNetworkGapJunctionClosed (G : AstrocyteNetworkGapJunctionPackage) : Prop :=
  G.connexinExpression ∧ G.gapJunctionPermeability ∧ G.intercellularCalciumWave ∧
  G.metabolicCoupling ∧ G.networkSynchronization

theorem astrocyte_network_gap_junction_closed_from_evidence
    (G : AstrocyteNetworkGapJunctionPackage) (E : AstrocyteNetworkGapJunctionEvidence G) :
    AstrocyteNetworkGapJunctionClosed G := by
  exact And.intro E.connexinExpressionClosed
    (And.intro E.gapJunctionPermeabilityClosed
      (And.intro E.intercellularCalciumWaveClosed
        (And.intro E.metabolicCouplingClosed E.networkSynchronizationClosed)))

end NeuroscienceAstrocytesTheoremCanonicalLaneLean
end HautevilleHouse