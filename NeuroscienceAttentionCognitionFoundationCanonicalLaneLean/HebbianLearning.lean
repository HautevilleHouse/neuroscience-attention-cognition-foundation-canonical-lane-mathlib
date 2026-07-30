import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAttentionCognitionFoundationCanonicalLaneLean

structure HebbianPlasticityPackage where
  preSynapticActivity : Type u
  postSynapticActivity : Type v
  weightUpdateRule : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop
  weightBounds : Prop

structure HebbianPlasticityEvidence (P : HebbianPlasticityPackage) where
  weightUpdateRuleClosed : P.weightUpdateRule
  longTermPotentiationClosed : P.longTermPotentiation
  longTermDepressionClosed : P.longTermDepression
  weightBoundsClosed : P.weightBounds

def HebbianPlasticityClosed (P : HebbianPlasticityPackage) : Prop :=
  P.weightUpdateRule ∧ P.longTermPotentiation ∧
  P.longTermDepression ∧ P.weightBounds

theorem hebbian_plasticity_closed_from_evidence (P : HebbianPlasticityPackage)
    (E : HebbianPlasticityEvidence P) : HebbianPlasticityClosed P := by
  exact And.intro E.weightUpdateRuleClosed
    (And.intro E.longTermPotentiationClosed
      (And.intro E.longTermDepressionClosed E.weightBoundsClosed))

end NeuroscienceAttentionCognitionFoundationCanonicalLaneLean
end HautevilleHouse