import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAstrocytesTheoremCanonicalLaneLean

structure AstrocyteReceptorSignalingPackage where
  gpcReceptors : Prop
  ip3Pathway : Prop
  intracellularCalciumRelease : Prop
  kinaseActivation : Prop
  geneExpressionRegulation : Prop

structure AstrocyteReceptorSignalingEvidence (A : AstrocyteReceptorSignalingPackage) where
  gpcReceptorsClosed : A.gpcReceptors
  ip3PathwayClosed : A.ip3Pathway
  intracellularCalciumReleaseClosed : A.intracellularCalciumRelease
  kinaseActivationClosed : A.kinaseActivation
  geneExpressionRegulationClosed : A.geneExpressionRegulation

def AstrocyteReceptorSignalingClosed (A : AstrocyteReceptorSignalingPackage) : Prop :=
  A.gpcReceptors ∧ A.ip3Pathway ∧
  A.intracellularCalciumRelease ∧ A.kinaseActivation ∧ A.geneExpressionRegulation

theorem astrocyte_receptor_signaling_closed_from_evidence
    (A : AstrocyteReceptorSignalingPackage) (E : AstrocyteReceptorSignalingEvidence A) :
    AstrocyteReceptorSignalingClosed A := by
  exact And.intro E.gpcReceptorsClosed
    (And.intro E.ip3PathwayClosed
      (And.intro E.intracellularCalciumReleaseClosed
        (And.intro E.kinaseActivationClosed E.geneExpressionRegulationClosed)))

end NeuroscienceAstrocytesTheoremCanonicalLaneLean
end HautevilleHouse