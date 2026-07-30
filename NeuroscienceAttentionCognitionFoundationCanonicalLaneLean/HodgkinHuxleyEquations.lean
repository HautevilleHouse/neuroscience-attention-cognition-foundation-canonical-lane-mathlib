import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAttentionCognitionFoundationCanonicalLaneLean

structure HodgkinHuxleyModel where
  membraneVoltage : ℝ
  sodiumActivation : ℝ
  sodiumInactivation : ℝ
  potassiumActivation : ℝ
  voltageEquation : Prop
  gatingEquations : Prop
  alphaBetaFunctions : Prop
  parameterValues : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyModel) where
  voltageEquationClosed : H.voltageEquation
  gatingEquationsClosed : H.gatingEquations
  alphaBetaFunctionsClosed : H.alphaBetaFunctions
  parameterValuesClosed : H.parameterValues

def HodgkinHuxleyClosed (H : HodgkinHuxleyModel) : Prop :=
  H.voltageEquation ∧ H.gatingEquations ∧ H.alphaBetaFunctions ∧ H.parameterValues

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyModel) (E : HodgkinHuxleyEvidence H) :
    HodgkinHuxleyClosed H := by
  exact And.intro E.voltageEquationClosed (And.intro E.gatingEquationsClosed (And.intro E.alphaBetaFunctionsClosed E.parameterValuesClosed))

end NeuroscienceAttentionCognitionFoundationCanonicalLaneLean
end HautevilleHouse