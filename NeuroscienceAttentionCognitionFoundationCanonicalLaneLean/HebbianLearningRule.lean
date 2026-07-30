import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAttentionCognitionFoundationCanonicalLaneLean

structure HebbianLearningRule where
  synapticWeightUpdate : ℝ → ℝ → ℝ
  learningRate : ℝ
  correlationBased : Prop
  weightEvolution : Prop
  correlationBasedTerm : correlationBased
  weightEvolutionTerm : weightEvolution

structure HebbianLearningEvidence (H : HebbianLearningRule) where
  correlationBasedClosed : H.correlationBased
  weightEvolutionClosed : H.weightEvolution

def HebbianLearningClosed (H : HebbianLearningRule) : Prop :=
  H.correlationBased ∧ H.weightEvolution

theorem hebbian_learning_closed_from_evidence (H : HebbianLearningRule)
    (E : HebbianLearningEvidence H) : HebbianLearningClosed H := by
  exact And.intro E.correlationBasedClosed E.weightEvolutionClosed

end NeuroscienceAttentionCognitionFoundationCanonicalLaneLean
end HautevilleHouse