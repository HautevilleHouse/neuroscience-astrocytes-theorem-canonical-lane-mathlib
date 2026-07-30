import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAstrocytesTheoremCanonicalLaneLean

structure HodgkinHuxleyDynamicsPackage where
  sodiumChannelDynamics : Prop
  potassiumChannelDynamics : Prop
  leakCurrent : Prop
  membraneCapacitance : Prop
  actionPotentialInitiation : Prop

structure HodgkinHuxleyDynamicsEvidence (H : HodgkinHuxleyDynamicsPackage) where
  sodiumChannelDynamicsClosed : H.sodiumChannelDynamics
  potassiumChannelDynamicsClosed : H.potassiumChannelDynamics
  leakCurrentClosed : H.leakCurrent
  membraneCapacitanceClosed : H.membraneCapacitance
  actionPotentialInitiationClosed : H.actionPotentialInitiation

def HodgkinHuxleyDynamicsClosed (H : HodgkinHuxleyDynamicsPackage) : Prop :=
  H.sodiumChannelDynamics ∧ H.potassiumChannelDynamics ∧ H.leakCurrent ∧ H.membraneCapacitance ∧ H.actionPotentialInitiation

theorem hodgkin_huxley_dynamics_closed_from_evidence (H : HodgkinHuxleyDynamicsPackage) (E : HodgkinHuxleyDynamicsEvidence H) : HodgkinHuxleyDynamicsClosed H := by
  exact And.intro E.sodiumChannelDynamicsClosed (And.intro E.potassiumChannelDynamicsClosed (And.intro E.leakCurrentClosed (And.intro E.membraneCapacitanceClosed E.actionPotentialInitiationClosed)))

end NeuroscienceAstrocytesTheoremCanonicalLaneLean
end HautevilleHouse