import HautevilleHouse.NeuroscienceAstrocytesTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAstrocytesTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AstrocytesWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  A.object.conclusion

end NeuroscienceAstrocytesTheoremCanonicalLaneLean
end HautevilleHouse