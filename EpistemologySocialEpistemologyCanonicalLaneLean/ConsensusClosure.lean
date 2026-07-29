import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EpistemologySocialEpistemologyCanonicalLaneLean.TestimonyAdmissible

namespace HautevilleHouse
namespace EpistemologySocialEpistemologyCanonicalLaneLean

structure ConsensusEvidence (A : AdmissibleClass) where
  evidence : A.endpointSatisfied ∨ A.remainderRecorded

def ConsensusClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∧ A.remainderRecorded

def ConsensusBridgeClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied

def ConsensusGateClosed (A : AdmissibleClass) : Prop :=
  A.remainderRecorded

theorem consensus_bridge_from_class (A : AdmissibleClass) (h : A.endpointSatisfied) : ConsensusBridgeClosed A :=
  h

theorem consensus_gate_from_class (A : AdmissibleClass) (h : A.remainderRecorded) : ConsensusGateClosed A :=
  h

end EpistemologySocialEpistemologyCanonicalLaneLean
end HautevilleHouse