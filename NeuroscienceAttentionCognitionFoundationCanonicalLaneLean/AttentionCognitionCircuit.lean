import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAttentionCognitionFoundationCanonicalLaneLean

structure AttentionCircuitPackage (T : ThalamocorticalPackage) where
  topDownSignal : Prop
  bottomUpSignal : Prop
  gainModulation : Prop
  selectiveAmplification : Prop
  competitiveBias : Prop
  workingMemoryInteraction : Prop

structure AttentionCircuitEvidence {T : ThalamocorticalPackage} (A : AttentionCircuitPackage T) where
  topDownSignalClosed : A.topDownSignal
  bottomUpSignalClosed : A.bottomUpSignal
  gainModulationClosed : A.gainModulation
  selectiveAmplificationClosed : A.selectiveAmplification
  competitiveBiasClosed : A.competitiveBias
  workingMemoryInteractionClosed : A.workingMemoryInteraction

def AttentionCircuitClosed {T : ThalamocorticalPackage} (A : AttentionCircuitPackage T) : Prop :=
  A.topDownSignal ∧ A.bottomUpSignal ∧ A.gainModulation ∧ A.selectiveAmplification ∧ A.competitiveBias ∧ A.workingMemoryInteraction

theorem attention_circuit_closed_from_evidence {T : ThalamocorticalPackage} (A : AttentionCircuitPackage T) (E : AttentionCircuitEvidence A) : AttentionCircuitClosed A := by
  exact And.intro E.topDownSignalClosed (And.intro E.bottomUpSignalClosed (And.intro E.gainModulationClosed (And.intro E.selectiveAmplificationClosed (And.intro E.competitiveBiasClosed E.workingMemoryInteractionClosed))))

end NeuroscienceAttentionCognitionFoundationCanonicalLaneLean
end HautevilleHouse