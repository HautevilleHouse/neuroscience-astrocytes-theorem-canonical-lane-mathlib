import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAstrocytesTheoremCanonicalLaneLean

structure TripartiteSynapsePackage where
  presynapticTerminal : Type u
  postsynapticDensity : Type v
  astrocyticProcess : Type w
  synapticCleft : Type x
  glutamateSpillover : Prop
  astrocyticGlutamateUptake : Prop
  gliotransmitterModulation : Prop
  longTermPotentiation : Prop

structure TripartiteSynapseEvidence (S : TripartiteSynapsePackage) where
  glutamateSpilloverClosed : S.glutamateSpillover
  astrocyticGlutamateUptakeClosed : S.astrocyticGlutamateUptake
  gliotransmitterModulationClosed : S.gliotransmitterModulation
  longTermPotentiationClosed : S.longTermPotentiation

def TripartiteSynapseClosed (S : TripartiteSynapsePackage) : Prop :=
  S.glutamateSpillover ∧ S.astrocyticGlutamateUptake ∧ S.gliotransmitterModulation ∧ S.longTermPotentiation

theorem tripartite_synapse_closed_from_evidence
    (S : TripartiteSynapsePackage) (E : TripartiteSynapseEvidence S) :
    TripartiteSynapseClosed S := by
  exact And.intro E.glutamateSpilloverClosed
    (And.intro E.astrocyticGlutamateUptakeClosed
      (And.intro E.gliotransmitterModulationClosed E.longTermPotentiationClosed))

end HautevilleHouse
end NeuroscienceAstrocytesTheoremCanonicalLaneLean