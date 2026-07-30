import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAstrocytesTheoremCanonicalLaneLean

structure HebbianPlasticityPackage where
  longTermPotentiation : Prop
  longTermDepression : Prop
  spikeTimingDependentPlasticity : Prop
  synapticScaling : Prop
  metaplasticity : Prop

structure HebbianPlasticityEvidence (H : HebbianPlasticityPackage) where
  longTermPotentiationClosed : H.longTermPotentiation
  longTermDepressionClosed : H.longTermDepression
  spikeTimingDependentPlasticityClosed : H.spikeTimingDependentPlasticity
  synapticScalingClosed : H.synapticScaling
  metaplasticityClosed : H.metaplasticity

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.longTermPotentiation ∧ H.longTermDepression ∧ H.spikeTimingDependentPlasticity ∧ H.synapticScaling ∧ H.metaplasticity

theorem hebbian_plasticity_closed_from_evidence (H : HebbianPlasticityPackage) (E : HebbianPlasticityEvidence H) : HebbianPlasticityClosed H := by
  exact And.intro E.longTermPotentiationClosed (And.intro E.longTermDepressionClosed (And.intro E.spikeTimingDependentPlasticityClosed (And.intro E.synapticScalingClosed E.metaplasticityClosed)))

end NeuroscienceAstrocytesTheoremCanonicalLaneLean
end HautevilleHouse