import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAstrocytesTheoremCanonicalLaneLean

structure TripartiteSynapsePackage where
  preSynaptic : Type
  postSynaptic : Type
  astrocyteProcess : Type
  glutamateUptake : Prop
  gliotransmitterRelease : Prop
  synapticModulation : Prop

structure TripartiteSynapseEvidence (T : TripartiteSynapsePackage) where
  glutamateUptakeClosed : T.glutamateUptake
  gliotransmitterReleaseClosed : T.gliotransmitterRelease
  synapticModulationClosed : T.synapticModulation

def TripartiteSynapseClosed (T : TripartiteSynapsePackage) : Prop :=
  T.glutamateUptake ∧ T.gliotransmitterRelease ∧ T.synapticModulation

theorem tripartite_synapse_closed_from_evidence (T : TripartiteSynapsePackage) (E : TripartiteSynapseEvidence T) : TripartiteSynapseClosed T :=
  And.intro E.glutamateUptakeClosed (And.intro E.gliotransmitterReleaseClosed E.synapticModulationClosed)

end NeuroscienceAstrocytesTheoremCanonicalLaneLean
end HautevilleHouse