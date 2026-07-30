import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAstrocytesTheoremCanonicalLaneLean

structure AstrocyteNeuromodulationPackage where
  neuromodulatorReceptor : Prop
  intracellularSignaling : Prop
  gliotransmitterReleaseModulation : Prop
  synapticPlasticityModulation : Prop
  networkOscillation : Prop

structure AstrocyteNeuromodulationEvidence (N : AstrocyteNeuromodulationPackage) where
  neuromodulatorReceptorClosed : N.neuromodulatorReceptor
  intracellularSignalingClosed : N.intracellularSignaling
  gliotransmitterReleaseModulationClosed : N.gliotransmitterReleaseModulation
  synapticPlasticityModulationClosed : N.synapticPlasticityModulation
  networkOscillationClosed : N.networkOscillation

def AstrocyteNeuromodulationClosed (N : AstrocyteNeuromodulationPackage) : Prop :=
  N.neuromodulatorReceptor ∧ N.intracellularSignaling ∧ N.gliotransmitterReleaseModulation ∧
  N.synapticPlasticityModulation ∧ N.networkOscillation

theorem astrocyte_neuromodulation_closed_from_evidence
    (N : AstrocyteNeuromodulationPackage) (E : AstrocyteNeuromodulationEvidence N) :
    AstrocyteNeuromodulationClosed N := by
  exact And.intro E.neuromodulatorReceptorClosed
    (And.intro E.intracellularSignalingClosed
      (And.intro E.gliotransmitterReleaseModulationClosed
        (And.intro E.synapticPlasticityModulationClosed E.networkOscillationClosed)))

end NeuroscienceAstrocytesTheoremCanonicalLaneLean
end HautevilleHouse