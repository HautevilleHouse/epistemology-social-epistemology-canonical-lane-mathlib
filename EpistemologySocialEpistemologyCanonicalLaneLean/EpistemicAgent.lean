import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologySocialEpistemologyCanonicalLaneLean

structure EpistemicAgent where
  agentId : String
  beliefSet : Type u
  rationality : Prop
  openness : Prop
  reliability : Prop

structure EpistemicAgentEvidence (A : EpistemicAgent) where
  rationalityClosed : A.rationality
  opennessClosed : A.openness
  reliabilityClosed : A.reliability

def EpistemicAgentClosed (A : EpistemicAgent) : Prop :=
  A.rationality ∧ A.openness ∧ A.reliability

theorem epistemic_agent_closed_from_evidence (A : EpistemicAgent) (E : EpistemicAgentEvidence A) :
    EpistemicAgentClosed A := by
  exact And.intro E.rationalityClosed (And.intro E.opennessClosed E.reliabilityClosed)

end EpistemologySocialEpistemologyCanonicalLaneLean
end HautevilleHouse