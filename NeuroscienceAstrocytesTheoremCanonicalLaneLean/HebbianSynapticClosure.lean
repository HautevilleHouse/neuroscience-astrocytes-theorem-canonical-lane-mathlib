import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAstrocytesTheoremCanonicalLaneLean

structure HebbianPlasticityPackage where
  hebbianRule : Prop
  stdp : Prop
  calciumDependence : Prop
  astrocyteModulation : Prop

structure HebbianPlasticityEvidence (H : HebbianPlasticityPackage) where
  hebbianRuleClosed : H.hebbianRule
  stdpClosed : H.stdp
  calciumDependenceClosed : H.calciumDependence
  astrocyteModulationClosed : H.astrocyteModulation

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.hebbianRule ∧ H.stdp ∧ H.calciumDependence ∧ H.astrocyteModulation

theorem hebbian_plasticity_closed_from_evidence (H : HebbianPlasticityPackage) (E : HebbianPlasticityEvidence H) : HebbianPlasticityClosed H :=
  And.intro E.hebbianRuleClosed (And.intro E.stdpClosed (And.intro E.calciumDependenceClosed E.astrocyteModulationClosed))

end NeuroscienceAstrocytesTheoremCanonicalLaneLean
end HautevilleHouse