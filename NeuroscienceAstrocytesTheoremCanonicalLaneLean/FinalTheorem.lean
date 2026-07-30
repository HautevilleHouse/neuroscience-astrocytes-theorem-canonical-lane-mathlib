import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceAstrocytesTheoremCanonicalLaneLean.AstrocyteCalciumSignaling
import HautevilleHouse.NeuroscienceAstrocytesTheoremCanonicalLaneLean.AstrocyteNeuronCoupling

namespace HautevilleHouse
namespace NeuroscienceAstrocytesTheoremCanonicalLaneLean

def ConstrainedAstrocyteClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_astrocyte_endgame (A : AdmissibleClass) :
    ConstrainedAstrocyteClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HautevilleHouse
end NeuroscienceAstrocytesTheoremCanonicalLaneLean