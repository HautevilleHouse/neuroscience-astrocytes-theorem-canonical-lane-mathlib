import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAstrocytesTheoremCanonicalLaneLean

structure AstrocyteNeuroinflammationPackage where
  reactiveAstrogliosis : Prop
  cytokineRelease : Prop
  complementActivation : Prop
  bloodBrainBarrierIntegrity : Prop
  neurotoxicityProp : Prop

structure AstrocyteNeuroinflammationEvidence (I : AstrocyteNeuroinflammationPackage) where
  reactiveAstrogliosisClosed : I.reactiveAstrogliosis
  cytokineReleaseClosed : I.cytokineRelease
  complementActivationClosed : I.complementActivation
  bloodBrainBarrierIntegrityClosed : I.bloodBrainBarrierIntegrity
  neurotoxicityPropClosed : I.neurotoxicityProp

def AstrocyteNeuroinflammationClosed (I : AstrocyteNeuroinflammationPackage) : Prop :=
  I.reactiveAstrogliosis ∧ I.cytokineRelease ∧ I.complementActivation ∧
  I.bloodBrainBarrierIntegrity ∧ I.neurotoxicityProp

theorem astrocyte_neuroinflammation_closed_from_evidence
    (I : AstrocyteNeuroinflammationPackage) (E : AstrocyteNeuroinflammationEvidence I) :
    AstrocyteNeuroinflammationClosed I := by
  exact And.intro E.reactiveAstrogliosisClosed
    (And.intro E.cytokineReleaseClosed
      (And.intro E.complementActivationClosed
        (And.intro E.bloodBrainBarrierIntegrityClosed E.neurotoxicityPropClosed)))

end HautevilleHouse
end NeuroscienceAstrocytesTheoremCanonicalLaneLean