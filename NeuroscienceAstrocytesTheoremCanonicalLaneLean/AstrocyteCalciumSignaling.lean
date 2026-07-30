import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAstrocytesTheoremCanonicalLaneLean

structure AstrocyteCalciumSignalingPackage where
  calciumWavePropagation : Prop
  ip3ReceptorDynamics : Prop
  gliotransmitterRelease : Prop
  synapticModulation : Prop

structure AstrocyteCalciumSignalingEvidence (C : AstrocyteCalciumSignalingPackage) where
  calciumWavePropagationClosed : C.calciumWavePropagation
  ip3ReceptorDynamicsClosed : C.ip3ReceptorDynamics
  gliotransmitterReleaseClosed : C.gliotransmitterRelease
  synapticModulationClosed : C.synapticModulation

def AstrocyteCalciumSignalingClosed (C : AstrocyteCalciumSignalingPackage) : Prop :=
  C.calciumWavePropagation ∧ C.ip3ReceptorDynamics ∧
  C.gliotransmitterRelease ∧ C.synapticModulation

theorem astrocyte_calcium_signaling_closed_from_evidence
    (C : AstrocyteCalciumSignalingPackage) (E : AstrocyteCalciumSignalingEvidence C) :
    AstrocyteCalciumSignalingClosed C := by
  exact And.intro E.calciumWavePropagationClosed
    (And.intro E.ip3ReceptorDynamicsClosed
      (And.intro E.gliotransmitterReleaseClosed E.synapticModulationClosed))

end HautevilleHouse
end NeuroscienceAstrocytesTheoremCanonicalLaneLean