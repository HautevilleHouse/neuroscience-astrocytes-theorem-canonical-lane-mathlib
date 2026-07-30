import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAstrocytesTheoremCanonicalLaneLean

structure AstrocyteMetabolicSupportPackage where
  glutamateGlutamineCycle : Prop
  lactateShuttle : Prop
  glycogenMetabolism : Prop
  antioxidantDefense : Prop
  ionHomeostasis : Prop

structure AstrocyteMetabolicSupportEvidence (M : AstrocyteMetabolicSupportPackage) where
  glutamateGlutamineCycleClosed : M.glutamateGlutamineCycle
  lactateShuttleClosed : M.lactateShuttle
  glycogenMetabolismClosed : M.glycogenMetabolism
  antioxidantDefenseClosed : M.antioxidantDefense
  ionHomeostasisClosed : M.ionHomeostasis

def AstrocyteMetabolicSupportClosed (M : AstrocyteMetabolicSupportPackage) : Prop :=
  M.glutamateGlutamineCycle ∧ M.lactateShuttle ∧ M.glycogenMetabolism ∧
  M.antioxidantDefense ∧ M.ionHomeostasis

theorem astrocyte_metabolic_support_closed_from_evidence
    (M : AstrocyteMetabolicSupportPackage) (E : AstrocyteMetabolicSupportEvidence M) :
    AstrocyteMetabolicSupportClosed M := by
  exact And.intro E.glutamateGlutamineCycleClosed
    (And.intro E.lactateShuttleClosed
      (And.intro E.glycogenMetabolismClosed
        (And.intro E.antioxidantDefenseClosed E.ionHomeostasisClosed)))

end NeuroscienceAstrocytesTheoremCanonicalLaneLean
end HautevilleHouse