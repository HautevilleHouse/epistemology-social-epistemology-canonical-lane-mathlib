import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologySocialEpistemologyCanonicalLaneLean

structure EpistemicCommunityPackage where
  communityAgreement : Prop
  sharedBeliefs : Prop
  reliableTestimonyChannels : Prop
  consensusMechanism : Prop

structure EpistemicCommunityEvidence (P : EpistemicCommunityPackage) where
  communityAgreementClosed : P.communityAgreement
  sharedBeliefsClosed : P.sharedBeliefs
  reliableTestimonyChannelsClosed : P.reliableTestimonyChannels
  consensusMechanismClosed : P.consensusMechanism

def EpistemicCommunityClosed (P : EpistemicCommunityPackage) : Prop :=
  P.communityAgreement ∧ P.sharedBeliefs ∧ P.reliableTestimonyChannels ∧ P.consensusMechanism

theorem epistemic_community_closed_from_evidence (P : EpistemicCommunityPackage) (E : EpistemicCommunityEvidence P) :
    EpistemicCommunityClosed P := by
  exact And.intro E.communityAgreementClosed
    (And.intro E.sharedBeliefsClosed
      (And.intro E.reliableTestimonyChannelsClosed E.consensusMechanismClosed))

end EpistemologySocialEpistemologyCanonicalLaneLean
end HautevilleHouse