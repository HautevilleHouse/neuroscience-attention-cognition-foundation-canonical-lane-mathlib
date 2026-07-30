import Mathlib.Data.Real.Basic

namespace HautevilleHouse
namespace NeuroscienceAttentionCognitionFoundation

structure NeuralSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure NeuralAdmittedObject where
  space : NeuralSpace
  inputLayerSize : ℕ
  hiddenLayerSize : ℕ
  outputLayerSize : ℕ
  activationFunctionType : String
  learningRuleType : String
  conclusion : Type → Prop

structure NeuralEndgameState where
  object : NeuralAdmittedObject

def NeuralWitnessClosed (O : NeuralAdmittedObject) : Prop :=
  O.conclusion O.space.carrier

end NeuroscienceAttentionCognitionFoundation
end HautevilleHouse