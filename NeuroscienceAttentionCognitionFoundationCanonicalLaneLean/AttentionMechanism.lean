import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAttentionCognitionFoundationCanonicalLaneLean

structure AttentionPackage where
  sensoryInput : Type u
  saliencyMap : Type v
  topDownBias : Prop
  competitiveSelection : Prop
  gainModulation : Prop
  workingMemoryInteraction : Prop

structure AttentionEvidence (P : AttentionPackage) where
  topDownBiasClosed : P.topDownBias
  competitiveSelectionClosed : P.competitiveSelection
  gainModulationClosed : P.gainModulation
  workingMemoryInteractionClosed : P.workingMemoryInteraction

def AttentionClosed (P : AttentionPackage) : Prop :=
  P.topDownBias ∧ P.competitiveSelection ∧
  P.gainModulation ∧ P.workingMemoryInteraction

theorem attention_closed_from_evidence (P : AttentionPackage)
    (E : AttentionEvidence P) : AttentionClosed P := by
  exact And.intro E.topDownBiasClosed
    (And.intro E.competitiveSelectionClosed
      (And.intro E.gainModulationClosed E.workingMemoryInteractionClosed))

end NeuroscienceAttentionCognitionFoundationCanonicalLaneLean
end HautevilleHouse