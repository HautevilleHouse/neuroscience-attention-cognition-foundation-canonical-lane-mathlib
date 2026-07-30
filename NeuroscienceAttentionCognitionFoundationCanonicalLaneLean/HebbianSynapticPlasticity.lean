import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAttentionCognitionFoundationCanonicalLaneLean

structure HebbianPlasticityPackage (S : SynapticConnectionPackage) where
  preSynapticActivity : Prop
  postSynapticActivity : Prop
  weightChangeRule : Prop
  correlationDependence : Prop
  stabilizationMechanism : Prop

structure HebbianPlasticityEvidence {S : SynapticConnectionPackage} (H : HebbianPlasticityPackage S) where
  preSynapticActivityClosed : H.preSynapticActivity
  postSynapticActivityClosed : H.postSynapticActivity
  weightChangeRuleClosed : H.weightChangeRule
  correlationDependenceClosed : H.correlationDependence
  stabilizationMechanismClosed : H.stabilizationMechanism

def HebbianPlasticityClosed {S : SynapticConnectionPackage} (H : HebbianPlasticityPackage S) : Prop :=
  H.preSynapticActivity ∧ H.postSynapticActivity ∧ H.weightChangeRule ∧ H.correlationDependence ∧ H.stabilizationMechanism

theorem hebbian_plasticity_closed_from_evidence {S : SynapticConnectionPackage} (H : HebbianPlasticityPackage S) (E : HebbianPlasticityEvidence H) : HebbianPlasticityClosed H := by
  exact And.intro E.preSynapticActivityClosed (And.intro E.postSynapticActivityClosed (And.intro E.weightChangeRuleClosed (And.intro E.correlationDependenceClosed E.stabilizationMechanismClosed)))

end NeuroscienceAttentionCognitionFoundationCanonicalLaneLean
end HautevilleHouse