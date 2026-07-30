import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.BridgeLemmas
import canoncialLaneMathlib.GateLemmas

namespace HautevilleHouse
namespace NeuroscienceAttentionCognitionFoundationCanonicalLaneLean

def ConstrainedNeuroscienceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_neuroscience_endgame (A : AdmissibleClass) :
    ConstrainedNeuroscienceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceAttentionCognitionFoundationCanonicalLaneLean
end HautevilleHouse