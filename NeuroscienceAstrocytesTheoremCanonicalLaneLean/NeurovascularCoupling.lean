import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAstrocytesTheoremCanonicalLaneLean

structure NeurovascularCouplingPackage where
  astrocyteEndfootProcess : Prop
  vasoactiveSubstanceRelease : Prop
  cerebralBloodFlowRegulation : Prop
  functionalHyperemia : Prop

structure NeurovascularCouplingEvidence (N : NeurovascularCouplingPackage) where
  astrocyteEndfootProcessClosed : N.astrocyteEndfootProcess
  vasoactiveSubstanceReleaseClosed : N.vasoactiveSubstanceRelease
  cerebralBloodFlowRegulationClosed : N.cerebralBloodFlowRegulation
  functionalHyperemiaClosed : N.functionalHyperemia

def NeurovascularCouplingClosed (N : NeurovascularCouplingPackage) : Prop :=
  N.astrocyteEndfootProcess ∧ N.vasoactiveSubstanceRelease ∧
  N.cerebralBloodFlowRegulation ∧ N.functionalHyperemia

theorem neurovascular_coupling_closed_from_evidence
    (N : NeurovascularCouplingPackage) (E : NeurovascularCouplingEvidence N) :
    NeurovascularCouplingClosed N := by
  exact And.intro E.astrocyteEndfootProcessClosed
    (And.intro E.vasoactiveSubstanceReleaseClosed
      (And.intro E.cerebralBloodFlowRegulationClosed E.functionalHyperemiaClosed))

end HautevilleHouse
end NeuroscienceAstrocytesTheoremCanonicalLaneLean