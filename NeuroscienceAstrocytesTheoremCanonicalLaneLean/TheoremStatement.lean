import HautevilleHouse.NeuroscienceAstrocytesTheoremCanonicalLaneLean.Basic

namespace HautevilleHouse
namespace NeuroscienceAstrocytesTheoremCanonicalLaneLean

structure AstrocytesSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure AstrocytesAdmittedObject where
  space : AstrocytesSpace
  astrocytesNetwork : Prop
  synapticPlasticityRule : Prop
  calciumDynamicsModel : Prop
  conclusion : astrocytesNetwork ∧ synapticPlasticityRule ∧ calciumDynamicsModel

def AstrocytesWitnessClosed (O : AstrocytesAdmittedObject) : Prop :=
  O.astrocytesNetwork ∧ O.synapticPlasticityRule ∧ O.calciumDynamicsModel

end NeuroscienceAstrocytesTheoremCanonicalLaneLean
end HautevilleHouse