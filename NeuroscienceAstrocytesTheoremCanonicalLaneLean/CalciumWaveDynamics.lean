import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAstrocytesTheoremCanonicalLaneLean

structure CalciumWavePackage where
  ip3Pathway : Prop
  wavePropagation : Prop
  atpRelease : Prop
  gliotransmission : Prop

structure CalciumWaveEvidence (C : CalciumWavePackage) where
  ip3PathwayClosed : C.ip3Pathway
  wavePropagationClosed : C.wavePropagation
  atpReleaseClosed : C.atpRelease
  gliotransmissionClosed : C.gliotransmission

def CalciumWaveClosed (C : CalciumWavePackage) : Prop :=
  C.ip3Pathway ∧ C.wavePropagation ∧ C.atpRelease ∧ C.gliotransmission

theorem calcium_wave_closed_from_evidence (C : CalciumWavePackage) (E : CalciumWaveEvidence C) : CalciumWaveClosed C :=
  And.intro E.ip3PathwayClosed (And.intro E.wavePropagationClosed (And.intro E.atpReleaseClosed E.gliotransmissionClosed))

end NeuroscienceAstrocytesTheoremCanonicalLaneLean
end HautevilleHouse