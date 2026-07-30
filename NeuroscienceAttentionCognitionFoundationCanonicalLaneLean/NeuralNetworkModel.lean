import Mathlib.Data.Matrix.Basic
import Mathlib.Analysis.InnerProductSpace.Basic

namespace HautevilleHouse
namespace NeuroscienceAttentionCognitionFoundation

structure NeuralNetworkModel where
  inputDimension : ℕ
  hiddenDimension : ℕ
  outputDimension : ℕ
  weights : Matrix (Fin hiddenDimension) (Fin inputDimension) ℝ
  bias : Vector ℝ (Fin hiddenDimension)
  outputLayer : Matrix (Fin outputDimension) (Fin hiddenDimension) ℝ
  activation : ℝ → ℝ
  learningRate : ℝ
  convergenceProperty : Prop
  convergenceProof : convergenceProperty

def NeuralNetworkClosed (M : NeuralNetworkModel) : Prop :=
  M.convergenceProperty

theorem neural_network_closed_from_model (M : NeuralNetworkModel) : NeuralNetworkClosed M :=
  M.convergenceProof

end NeuroscienceAttentionCognitionFoundation
end HautevilleHouse