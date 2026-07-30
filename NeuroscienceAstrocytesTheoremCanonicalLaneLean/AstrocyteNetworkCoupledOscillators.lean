import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAstrocytesTheoremCanonicalLaneLean

structure AstrocyteNetworkCoupledOscillatorsPackage where
  gapJunctionCoupling : Prop
  calciumOscillationSynchronization : Prop
  networkTopology : Prop
  frequencyModulation : Prop
  wavePropagationSpeed : Prop

structure AstrocyteNetworkCoupledOscillatorsEvidence
    (N : AstrocyteNetworkCoupledOscillatorsPackage) where
  gapJunctionCouplingClosed : N.gapJunctionCoupling
  calciumOscillationSynchronizationClosed : N.calciumOscillationSynchronization
  networkTopologyClosed : N.networkTopology
  frequencyModulationClosed : N.frequencyModulation
  wavePropagationSpeedClosed : N.wavePropagationSpeed

def AstrocyteNetworkCoupledOscillatorsClosed
    (N : AstrocyteNetworkCoupledOscillatorsPackage) : Prop :=
  N.gapJunctionCoupling ∧ N.calciumOscillationSynchronization ∧ N.networkTopology ∧
  N.frequencyModulation ∧ N.wavePropagationSpeed

theorem astrocyte_network_coupled_oscillators_closed_from_evidence
    (N : AstrocyteNetworkCoupledOscillatorsPackage)
    (E : AstrocyteNetworkCoupledOscillatorsEvidence N) :
    AstrocyteNetworkCoupledOscillatorsClosed N := by
  exact And.intro E.gapJunctionCouplingClosed
    (And.intro E.calciumOscillationSynchronizationClosed
      (And.intro E.networkTopologyClosed
        (And.intro E.frequencyModulationClosed E.wavePropagationSpeedClosed)))

end HautevilleHouse
end NeuroscienceAstrocytesTheoremCanonicalLaneLean