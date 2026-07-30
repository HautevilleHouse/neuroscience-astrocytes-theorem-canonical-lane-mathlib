import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAstrocytesTheoremCanonicalLaneLean

structure AstrocyteMetabolicCouplingPackage where
  glycogenMetabolism : Prop
  lactateShuttle : Prop
  glutamateGlutamineCycle : Prop
  energySubstrateSupply : Prop

structure AstrocyteMetabolicCouplingEvidence (M : AstrocyteMetabolicCouplingPackage) where
  glycogenMetabolismClosed : M.glycogenMetabolism
  lactateShuttleClosed : M.lactateShuttle
  glutamateGlutamineCycleClosed : M.glutamateGlutamineCycle
  energySubstrateSupplyClosed : M.energySubstrateSupply

def AstrocyteMetabolicCouplingClosed (M : AstrocyteMetabolicCouplingPackage) : Prop :=
  M.glycogenMetabolism ∧ M.lactateShuttle ∧ M.glutamateGlutamineCycle ∧ M.energySubstrateSupply

theorem astrocyte_metabolic_coupling_closed_from_evidence
    (M : AstrocyteMetabolicCouplingPackage) (E : AstrocyteMetabolicCouplingEvidence M) :
    AstrocyteMetabolicCouplingClosed M := by
  exact And.intro E.glycogenMetabolismClosed
    (And.intro E.lactateShuttleClosed
      (And.intro E.glutamateGlutamineCycleClosed E.energySubstrateSupplyClosed))

end HautevilleHouse
end NeuroscienceAstrocytesTheoremCanonicalLaneLean