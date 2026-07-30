import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAttentionCognitionFoundationCanonicalLaneLean

structure NeuralFieldPackage where
  fieldVariable : Type u
  spatialDomain : Type v
  integralKernel : Prop
  activationFunction : Prop
  propagationSpeed : Prop
  patternFormation : Prop

structure NeuralFieldEvidence (P : NeuralFieldPackage) where
  integralKernelClosed : P.integralKernel
  activationFunctionClosed : P.activationFunction
  propagationSpeedClosed : P.propagationSpeed
  patternFormationClosed : P.patternFormation

def NeuralFieldClosed (P : NeuralFieldPackage) : Prop :=
  P.integralKernel ∧ P.activationFunction ∧
  P.propagationSpeed ∧ P.patternFormation

theorem neural_field_closed_from_evidence (P : NeuralFieldPackage)
    (E : NeuralFieldEvidence P) : NeuralFieldClosed P := by
  exact And.intro E.integralKernelClosed
    (And.intro E.activationFunctionClosed
      (And.intro E.propagationSpeedClosed E.patternFormationClosed))

end NeuroscienceAttentionCognitionFoundationCanonicalLaneLean
end HautevilleHouse