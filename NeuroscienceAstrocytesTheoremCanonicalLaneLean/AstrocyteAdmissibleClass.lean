import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAstrocytesTheoremCanonicalLaneLean

structure AstrocyteAdmittedObject where
  cell : Type
  morphology : Type
  calciumSignaling : Prop
  synapticInteraction : Prop
  gliomodulation : Prop
  conclusion : calciumSignaling ∧ synapticInteraction ∧ gliomodulation

structure AdmissibleClass where
  object : AstrocyteAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.calciumSignaling ∧ A.object.synapticInteraction ∧ A.object.gliomodulation) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end NeuroscienceAstrocytesTheoremCanonicalLaneLean
end HautevilleHouse