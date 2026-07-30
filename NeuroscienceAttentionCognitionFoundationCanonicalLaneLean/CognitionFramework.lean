import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAttentionCognitionFoundationCanonicalLaneLean

structure CognitionPackage where
  perception : Prop
  memory : Prop
  decisionMaking : Prop
  executiveControl : Prop
  learningAndPlasticity : Prop

structure CognitionEvidence (P : CognitionPackage) where
  perceptionClosed : P.perception
  memoryClosed : P.memory
  decisionMakingClosed : P.decisionMaking
  executiveControlClosed : P.executiveControl
  learningAndPlasticityClosed : P.learningAndPlasticity

def CognitionClosed (P : CognitionPackage) : Prop :=
  P.perception ∧ P.memory ∧ P.decisionMaking ∧
  P.executiveControl ∧ P.learningAndPlasticity

theorem cognition_closed_from_evidence (P : CognitionPackage)
    (E : CognitionEvidence P) : CognitionClosed P := by
  exact And.intro E.perceptionClosed
    (And.intro E.memoryClosed
      (And.intro E.decisionMakingClosed
        (And.intro E.executiveControlClosed E.learningAndPlasticityClosed)))

end NeuroscienceAttentionCognitionFoundationCanonicalLaneLean
end HautevilleHouse