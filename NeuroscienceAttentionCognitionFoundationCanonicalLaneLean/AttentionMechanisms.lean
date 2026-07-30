import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAttentionCognitionFoundationCanonicalLaneLean

/-!
# Attention Mechanisms Package

This module formalizes neural correlates of selective attention as an admissible-class
bridge. Attention mechanisms are fundamental to cognitive neuroscience, filtering
relevant stimuli from noise.
-/

structure AttentionMechanismsPackage where
  topDownSignals : Prop
  bottomUpSalience : Prop
  competitiveSelection : Prop
  gainModulation : Prop
  thalamicGating : Prop
  prefrontalControl : Prop

structure AttentionMechanismsEvidence (A : AttentionMechanismsPackage) where
  topDownSignalsClosed : A.topDownSignals
  bottomUpSalienceClosed : A.bottomUpSalience
  competitiveSelectionClosed : A.competitiveSelection
  gainModulationClosed : A.gainModulation
  thalamicGatingClosed : A.thalamicGating
  prefrontalControlClosed : A.prefrontalControl

def AttentionMechanismsClosed (A : AttentionMechanismsPackage) : Prop :=
  A.topDownSignals ∧ A.bottomUpSalience ∧
  A.competitiveSelection ∧ A.gainModulation ∧
  A.thalamicGating ∧ A.prefrontalControl

theorem attention_mechanisms_closed_from_evidence
    (A : AttentionMechanismsPackage) (E : AttentionMechanismsEvidence A) :
    AttentionMechanismsClosed A := by
  exact And.intro E.topDownSignalsClosed
    (And.intro E.bottomUpSalienceClosed
      (And.intro E.competitiveSelectionClosed
        (And.intro E.gainModulationClosed
          (And.intro E.thalamicGatingClosed E.prefrontalControlClosed))))

end NeuroscienceAttentionCognitionFoundationCanonicalLaneLean
end HautevilleHouse