import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologySocialEpistemologyCanonicalLaneLean

structure KnowledgeClaimClassificationPackage where
  justifiedTrueBelief : Prop
  socialValidation : Prop
  expertiseReliability : Prop
  epistemicJustification : Prop

structure KnowledgeClaimClassificationEvidence (P : KnowledgeClaimClassificationPackage) where
  justifiedTrueBeliefClosed : P.justifiedTrueBelief
  socialValidationClosed : P.socialValidation
  expertiseReliabilityClosed : P.expertiseReliability
  epistemicJustificationClosed : P.epistemicJustification

def KnowledgeClaimClassificationClosed (P : KnowledgeClaimClassificationPackage) : Prop :=
  P.justifiedTrueBelief ∧ P.socialValidation ∧ P.expertiseReliability ∧ P.epistemicJustification

theorem knowledge_claim_classification_closed_from_evidence (P : KnowledgeClaimClassificationPackage) (E : KnowledgeClaimClassificationEvidence P) :
    KnowledgeClaimClassificationClosed P := by
  exact And.intro E.justifiedTrueBeliefClosed
    (And.intro E.socialValidationClosed
      (And.intro E.expertiseReliabilityClosed E.epistemicJustificationClosed))

end EpistemologySocialEpistemologyCanonicalLaneLean
end HautevilleHouse