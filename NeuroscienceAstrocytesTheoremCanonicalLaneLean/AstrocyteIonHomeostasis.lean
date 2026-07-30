import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAstrocytesTheoremCanonicalLaneLean

structure AstrocyteIonHomeostasisPackage where
  potassiumBuffering : Prop
  sodiumCalciumExchanger : Prop
  pHRegulation : Prop
  waterTransport : Prop
  ionChannelExpression : Prop

structure AstrocyteIonHomeostasisEvidence (I : AstrocyteIonHomeostasisPackage) where
  potassiumBufferingClosed : I.potassiumBuffering
  sodiumCalciumExchangerClosed : I.sodiumCalciumExchanger
  pHRegulationClosed : I.pHRegulation
  waterTransportClosed : I.waterTransport
  ionChannelExpressionClosed : I.ionChannelExpression

def AstrocyteIonHomeostasisClosed (I : AstrocyteIonHomeostasisPackage) : Prop :=
  I.potassiumBuffering ∧ I.sodiumCalciumExchanger ∧ I.pHRegulation ∧ I.waterTransport ∧ I.ionChannelExpression

theorem astrocyte_ion_homeostasis_closed_from_evidence
    (I : AstrocyteIonHomeostasisPackage) (E : AstrocyteIonHomeostasisEvidence I) :
    AstrocyteIonHomeostasisClosed I := by
  exact And.intro E.potassiumBufferingClosed
    (And.intro E.sodiumCalciumExchangerClosed
      (And.intro E.pHRegulationClosed
        (And.intro E.waterTransportClosed E.ionChannelExpressionClosed)))

end NeuroscienceAstrocytesTheoremCanonicalLaneLean
end HautevilleHouse