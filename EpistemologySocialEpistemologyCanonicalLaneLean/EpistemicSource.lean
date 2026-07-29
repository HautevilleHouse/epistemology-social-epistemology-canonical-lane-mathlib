import Mathlib.Topology.Basic

/-!
# Epistemic Source Package

Package defining epistemic sources and their justification strengths.
-/

namespace HautevilleHouse
namespace EpistemologySocialEpistemologyCanonicalLaneLean

structure EpistemicSourcePackage where
  sourceType : Type u
  reliability : Type v
  sourceCredentials : Prop
  informationChannel : Prop
  justificationReliability : Prop
  sourceCredentialsClosed : sourceCredentials
  informationChannelClosed : informationChannel
  justificationReliabilityClosed : justificationReliability

structure EpistemicSourceEvidence (S : EpistemicSourcePackage) where
  sourceCredentialsClosed : S.sourceCredentials
  informationChannelClosed : S.informationChannel
  justificationReliabilityClosed : S.justificationReliability

def EpistemicSourceClosed (S : EpistemicSourcePackage) : Prop :=
  S.sourceCredentials ∧ S.informationChannel ∧ S.justificationReliability

theorem epistemic_source_closed_from_evidence
    (S : EpistemicSourcePackage) (E : EpistemicSourceEvidence S) :
    EpistemicSourceClosed S := by
  exact And.intro E.sourceCredentialsClosed
    (And.intro E.informationChannelClosed E.justificationReliabilityClosed)

end EpistemologySocialEpistemologyCanonicalLaneLean
end HautevilleHouse