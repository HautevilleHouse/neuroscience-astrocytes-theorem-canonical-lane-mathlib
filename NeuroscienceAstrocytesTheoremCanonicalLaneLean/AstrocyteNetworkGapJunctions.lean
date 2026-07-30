import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAstrocytesTheoremCanonicalLaneLean

structure AstrocyteNetworkGapJunctionsPackage where
  connexinExpression : Prop
  gapJunctionConductance : Prop
  intercellularCalciumWave : Prop
  spatialBuffering : Prop
  networkSynchronization : Prop

structure AstrocyteNetworkGapJunctionsEvidence (A : AstrocyteNetworkGapJunctionsPackage) where
  connexinExpressionClosed : A.connexinExpression
  gapJunctionConductanceClosed : A.gapJunctionConductance
  intercellularCalciumWaveClosed : A.intercellularCalciumWave
  spatialBufferingClosed : A.spatialBuffering
  networkSynchronizationClosed : A.networkSynchronization

def AstrocyteNetworkGapJunctionsClosed (A : AstrocyteNetworkGapJunctionsPackage) : Prop :=
  A.connexinExpression ∧ A.gapJunctionConductance ∧
  A.intercellularCalciumWave ∧ A.spatialBuffering ∧ A.networkSynchronization

theorem astrocyte_network_gap_junctions_closed_from_evidence
    (A : AstrocyteNetworkGapJunctionsPackage) (E : AstrocyteNetworkGapJunctionsEvidence A) :
    AstrocyteNetworkGapJunctionsClosed A := by
  exact And.intro E.connexinExpressionClosed
    (And.intro E.gapJunctionConductanceClosed
      (And.intro E.intercellularCalciumWaveClosed
        (And.intro E.spatialBufferingClosed E.networkSynchronizationClosed)))

end NeuroscienceAstrocytesTheoremCanonicalLaneLean
end HautevilleHouse