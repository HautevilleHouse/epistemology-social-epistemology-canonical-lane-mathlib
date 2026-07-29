import EpicenterSocialEpistemologyCanonicalLaneLean.SocialKnowledgeDynamics

/-!
# Consensus Evidence Package

Package for evidence aggregation and consensus verification.
-/

namespace HautevilleHouse
namespace EpistemologySocialEpistemologyCanonicalLaneLean

structure ConsensusEvidencePackage
    {S : EpistemicSourcePackage} {T : TestimonyNetworkPackage S}
    (D : SocialKnowledgeDynamicsPackage T) where
  evidenceAggregationMethod : Prop
  consensusThreshold : Prop
  dissentResolution : Prop
  evidenceAggregationMethodClosed : evidenceAggregationMethod
  consensusThresholdClosed : consensusThreshold
  dissentResolutionClosed : dissentResolution

structure ConsensusEvidenceEvidence
    {S : EpistemicSourcePackage} {T : TestimonyNetworkPackage S}
    {D : SocialKnowledgeDynamicsPackage T}
    (C : ConsensusEvidencePackage D) where
  evidenceAggregationMethodClosed : C.evidenceAggregationMethod
  consensusThresholdClosed : C.consensusThreshold
  dissentResolutionClosed : C.dissentResolution

def ConsensusEvidenceClosed
    {S : EpistemicSourcePackage} {T : TestimonyNetworkPackage S}
    {D : SocialKnowledgeDynamicsPackage T}
    (C : ConsensusEvidencePackage D) : Prop :=
  C.evidenceAggregationMethod ∧ C.consensusThreshold ∧ C.dissentResolution

theorem consensus_evidence_closed_from_evidence
    {S : EpistemicSourcePackage} {T : TestimonyNetworkPackage S}
    {D : SocialKnowledgeDynamicsPackage T}
    (C : ConsensusEvidencePackage D)
    (E : ConsensusEvidenceEvidence C) : ConsensusEvidenceClosed C := by
  exact And.intro E.evidenceAggregationMethodClosed
    (And.intro E.consensusThresholdClosed E.dissentResolutionClosed)

end EpistemologySocialEpistemologyCanonicalLaneLean
end HautevilleHouse