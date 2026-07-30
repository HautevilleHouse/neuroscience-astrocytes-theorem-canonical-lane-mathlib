import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAstrocytesTheoremCanonicalLaneLean

structure AstrocyteNeuronCouplingPackage where
  tripartiteSynapseStructure : Prop
  glutamateGlutamineCycle : Prop
  energyMetabolismCoupling : Prop
  neurovascularCoupling : Prop

structure AstrocyteNeuronCouplingEvidence (C : AstrocyteNeuronCouplingPackage) where
  tripartiteSynapseStructureClosed : C.tripartiteSynapseStructure
  glutamateGlutamineCycleClosed : C.glutamateGlutamineCycle
  energyMetabolismCouplingClosed : C.energyMetabolismCoupling
  neurovascularCouplingClosed : C.neurovascularCoupling

def AstrocyteNeuronCouplingClosed (C : AstrocyteNeuronCouplingPackage) : Prop :=
  C.tripartiteSynapseStructure ∧ C.glutamateGlutamineCycle ∧
  C.energyMetabolismCoupling ∧ C.neurovascularCoupling

theorem astrocyte_neuron_coupling_closed_from_evidence
    (C : AstrocyteNeuronCouplingPackage) (E : AstrocyteNeuronCouplingEvidence C) :
    AstrocyteNeuronCouplingClosed C := by
  exact And.intro E.tripartiteSynapseStructureClosed
    (And.intro E.glutamateGlutamineCycleClosed
      (And.intro E.energyMetabolismCouplingClosed E.neurovascularCouplingClosed))

end HautevilleHouse
end NeuroscienceAstrocytesTheoremCanonicalLaneLean