import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAttentionCognitionFoundationCanonicalLaneLean

structure AdmittedObject where
  attentionNetwork : Type
  cognitionModel : Type
  hhNeuronDynamics : Prop
  hebbianLearningRule : Prop
  neuralFieldTheory : Prop
  connectomicsGraph : Prop
  conclusion : hhNeuronDynamics ∧ hebbianLearningRule ∧ neuralFieldTheory ∧ connectomicsGraph

def NeuroscienceWitnessClosed (O : AdmittedObject) : Prop :=
  O.hhNeuronDynamics ∧ O.hebbianLearningRule ∧ O.neuralFieldTheory ∧ O.connectomicsGraph

end NeuroscienceAttentionCognitionFoundationCanonicalLaneLean
end HautevilleHouse
