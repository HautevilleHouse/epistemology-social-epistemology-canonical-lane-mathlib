import EpistemologySocialEpistemologyCanonicalLaneLean.SocialEpistemicObjects

namespace HautevilleHouse
namespace EpistemologySocialEpistemologyCanonicalLaneLean

structure BeliefRevisionPackage where
  initialBeliefs : Prop
  newEvidence : Prop
  revisionRuleApplied : Prop
  revisedBeliefs : Prop
  initialBeliefsTerm : initialBeliefs
  newEvidenceTerm : newEvidence
  revisionRuleAppliedTerm : revisionRuleApplied
  revisedBeliefsTerm : revisedBeliefs

def BeliefRevisionClosed (B : BeliefRevisionPackage) : Prop :=
  B.initialBeliefs ∧ B.newEvidence ∧ B.revisionRuleApplied ∧ B.revisedBeliefs

theorem belief_revision_closed (B : BeliefRevisionPackage) :
    BeliefRevisionClosed B := by
  exact And.intro B.initialBeliefsTerm
    (And.intro B.newEvidenceTerm
      (And.intro B.revisionRuleAppliedTerm B.revisedBeliefsTerm))

end EpistemologySocialEpistemologyCanonicalLaneLean
end HautevilleHouse
