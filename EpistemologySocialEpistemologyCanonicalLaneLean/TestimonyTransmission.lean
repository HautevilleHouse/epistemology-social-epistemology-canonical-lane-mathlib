import EpistemologySocialEpistemologyCanonicalLaneLean.SocialEpistemicObjects

namespace HautevilleHouse
namespace EpistemologySocialEpistemologyCanonicalLaneLean

structure TestimonyTransmissionPackage where
  senderKnowledge : Prop
  receiverTrust : Prop
  transmissionCondition : Prop
  receivedKnowledge : Prop
  senderKnowledgeTerm : senderKnowledge
  receiverTrustTerm : receiverTrust
  transmissionConditionTerm : transmissionCondition
  receivedKnowledgeTerm : receivedKnowledge

def TestimonyTransmissionClosed (T : TestimonyTransmissionPackage) : Prop :=
  T.senderKnowledge ∧ T.receiverTrust ∧ T.transmissionCondition ∧ T.receivedKnowledge

theorem testimony_transmission_closed (T : TestimonyTransmissionPackage) :
    TestimonyTransmissionClosed T := by
  exact And.intro T.senderKnowledgeTerm
    (And.intro T.receiverTrustTerm
      (And.intro T.transmissionConditionTerm T.receivedKnowledgeTerm))

end EpistemologySocialEpistemologyCanonicalLaneLean
end HautevilleHouse
