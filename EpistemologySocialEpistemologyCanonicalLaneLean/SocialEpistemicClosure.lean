import canonicalLaneMathlib.AdmissibleClass
import EpistemologySocialEpistemologyCanonicalLaneLean.KnowledgeTransfer

namespace HautevilleHouse
namespace EpistemologySocialEpistemologyCanonicalLaneLean

structure SocialEpistemicClosure {A : EpistemicAgent} {T : TestimonyNetwork A}
    {J : JustificationStructure T} (K : KnowledgeTransfer J) where
  consensusReached : Prop
  disagreementResolved : Prop
  collectiveKnowledge : Prop

structure SocialEpistemicClosureEvidence {A : EpistemicAgent} {T : TestimonyNetwork A}
    {J : JustificationStructure T} {K : KnowledgeTransfer J}
    (S : SocialEpistemicClosure K) where
  consensusReachedClosed : S.consensusReached
  disagreementResolvedClosed : S.disagreementResolved
  collectiveKnowledgeClosed : S.collectiveKnowledge

def SocialEpistemicClosureClosed {A : EpistemicAgent} {T : TestimonyNetwork A}
    {J : JustificationStructure T} {K : KnowledgeTransfer J}
    (S : SocialEpistemicClosure K) : Prop :=
  S.consensusReached ∧ S.disagreementResolved ∧ S.collectiveKnowledge

theorem social_epistemic_closure_closed_from_evidence {A : EpistemicAgent} {T : TestimonyNetwork A}
    {J : JustificationStructure T} {K : KnowledgeTransfer J}
    (S : SocialEpistemicClosure K) (E : SocialEpistemicClosureEvidence S) :
    SocialEpistemicClosureClosed S := by
  exact And.intro E.consensusReachedClosed
    (And.intro E.disagreementResolvedClosed E.collectiveKnowledgeClosed)

end EpistemologySocialEpistemologyCanonicalLaneLean
end HautevilleHouse