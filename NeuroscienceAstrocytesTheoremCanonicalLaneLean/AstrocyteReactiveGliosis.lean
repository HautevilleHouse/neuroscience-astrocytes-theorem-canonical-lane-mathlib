import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAstrocytesTheoremCanonicalLaneLean

structure AstrocyteReactiveGliosisPackage where
  injurySignal : Prop
  gfapUpregulation : Prop
  scarFormation : Prop
  neuroinflammation : Prop
  functionalRecovery : Prop

structure AstrocyteReactiveGliosisEvidence (R : AstrocyteReactiveGliosisPackage) where
  injurySignalClosed : R.injurySignal
  gfapUpregulationClosed : R.gfapUpregulation
  scarFormationClosed : R.scarFormation
  neuroinflammationClosed : R.neuroinflammation
  functionalRecoveryClosed : R.functionalRecovery

def AstrocyteReactiveGliosisClosed (R : AstrocyteReactiveGliosisPackage) : Prop :=
  R.injurySignal ∧ R.gfapUpregulation ∧ R.scarFormation ∧ R.neuroinflammation ∧ R.functionalRecovery

theorem astrocyte_reactive_gliosis_closed_from_evidence
    (R : AstrocyteReactiveGliosisPackage) (E : AstrocyteReactiveGliosisEvidence R) :
    AstrocyteReactiveGliosisClosed R := by
  exact And.intro E.injurySignalClosed
    (And.intro E.gfapUpregulationClosed
      (And.intro E.scarFormationClosed
        (And.intro E.neuroinflammationClosed E.functionalRecoveryClosed)))

end NeuroscienceAstrocytesTheoremCanonicalLaneLean
end HautevilleHouse