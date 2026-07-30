import HautevilleHouse.NeuroscienceAstrocytesTheoremCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace NeuroscienceAstrocytesTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : AstrocytesAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  AstrocytesWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end NeuroscienceAstrocytesTheoremCanonicalLaneLean
end HautevilleHouse