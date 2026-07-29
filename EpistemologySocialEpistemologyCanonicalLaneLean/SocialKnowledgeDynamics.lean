import EpicenterSocialEpistemologyCanonicalLaneLean.TestimonyNetwork

/-!
# Social Knowledge Dynamics Package

Package for knowledge evolution and consensus formation.
-/

namespace HautevilleHouse
namespace EpistemologySocialEpistemologyCanonicalLaneLean

structure SocialKnowledgeDynamicsPackage
    {S : EpistemicSourcePackage} (T : TestimonyNetworkPackage S) where
  consensusFormationProcess : Prop
  knowledgeDiffusionRate : Prop
  updateRules : Prop
  convergenceCriteria : Prop
  consensusFormationProcessClosed : consensusFormationProcess
  knowledgeDiffusionRateClosed : knowledgeDiffusionRate
  updateRulesClosed : updateRules
  convergenceCriteriaClosed : convergenceCriteria

structure SocialKnowledgeDynamicsEvidence
    {S : EpistemicSourcePackage} {T : TestimonyNetworkPackage S}
    (D : SocialKnowledgeDynamicsPackage T) where
  consensusFormationProcessClosed : D.consensusFormationProcess
  knowledgeDiffusionRateClosed : D.knowledgeDiffusionRate
  updateRulesClosed : D.updateRules
  convergenceCriteriaClosed : D.convergenceCriteria

def SocialKnowledgeDynamicsClosed
    {S : EpistemicSourcePackage} {T : TestimonyNetworkPackage S}
    (D : SocialKnowledgeDynamicsPackage T) : Prop :=
  D.consensusFormationProcess ∧ D.knowledgeDiffusionRate ∧
  D.updateRules ∧ D.convergenceCriteria

theorem social_knowledge_dynamics_closed_from_evidence
    {S : EpistemicSourcePackage} {T : TestimonyNetworkPackage S}
    (D : SocialKnowledgeDynamicsPackage T)
    (E : SocialKnowledgeDynamicsEvidence D) :
    SocialKnowledgeDynamicsClosed D := by
  exact And.intro E.consensusFormationProcessClosed
    (And.intro E.knowledgeDiffusionRateClosed
      (And.intro E.updateRulesClosed E.convergenceCriteriaClosed))

end EpistemologySocialEpistemologyCanonicalLaneLean
end HautevilleHouse