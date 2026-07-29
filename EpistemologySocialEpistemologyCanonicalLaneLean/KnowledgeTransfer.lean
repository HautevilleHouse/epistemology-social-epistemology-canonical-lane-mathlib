import canonicalLaneMathlib.AdmissibleClass
import EpistemologySocialEpistemologyCanonicalLaneLean.JustificationStructure

namespace HautevilleHouse
namespace EpistemologySocialEpistemologyCanonicalLaneLean

structure KnowledgeTransfer {A : EpistemicAgent} {T : TestimonyNetwork A}
    (J : JustificationStructure T) where
  sourceKnowledge : Prop
  targetAcquisition : Prop
  transferMechanism : Prop
  epistemicGain : Prop

structure KnowledgeTransferEvidence {A : EpistemicAgent} {T : TestimonyNetwork A}
    {J : JustificationStructure T} (K : KnowledgeTransfer J) where
  sourceKnowledgeClosed : K.sourceKnowledge
  targetAcquisitionClosed : K.targetAcquisition
  transferMechanismClosed : K.transferMechanism
  epistemicGainClosed : K.epistemicGain

def KnowledgeTransferClosed {A : EpistemicAgent} {T : TestimonyNetwork A}
    {J : JustificationStructure T} (K : KnowledgeTransfer J) : Prop :=
  K.sourceKnowledge ∧ K.targetAcquisition ∧ K.transferMechanism ∧ K.epistemicGain

theorem knowledge_transfer_closed_from_evidence {A : EpistemicAgent} {T : TestimonyNetwork A}
    {J : JustificationStructure T} (K : KnowledgeTransfer J)
    (E : KnowledgeTransferEvidence K) : KnowledgeTransferClosed K := by
  exact And.intro E.sourceKnowledgeClosed
    (And.intro E.targetAcquisitionClosed
      (And.intro E.transferMechanismClosed E.epistemicGainClosed))

end EpistemologySocialEpistemologyCanonicalLaneLean
end HautevilleHouse