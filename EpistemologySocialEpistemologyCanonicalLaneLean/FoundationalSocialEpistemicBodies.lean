import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologySocialEpistemologyCanonicalLaneLean

structure FoundationalSocialEpistemicBodyPackage where
  testimonialKnowledgeDefined : Prop
  epistemicJustificationDefined : Prop
  socialContextDefined : Prop
  knowledgeTransmissionDefined : Prop

structure FoundationalSocialEpistemicBodyEvidence (P : FoundationalSocialEpistemicBodyPackage) where
  testimonialKnowledgeDefinedClosed : P.testimonialKnowledgeDefined
  epistemicJustificationDefinedClosed : P.epistemicJustificationDefined
  socialContextDefinedClosed : P.socialContextDefined
  knowledgeTransmissionDefinedClosed : P.knowledgeTransmissionDefined

def FoundationalSocialEpistemicBodyClosed (P : FoundationalSocialEpistemicBodyPackage) : Prop :=
  P.testimonialKnowledgeDefined ∧ P.epistemicJustificationDefined ∧
  P.socialContextDefined ∧ P.knowledgeTransmissionDefined

theorem foundational_social_epistemic_body_closed_from_evidence (P : FoundationalSocialEpistemicBodyPackage) (E : FoundationalSocialEpistemicBodyEvidence P) :
    FoundationalSocialEpistemicBodyClosed P := by
  exact And.intro E.testimonialKnowledgeDefinedClosed
    (And.intro E.epistemicJustificationDefinedClosed
      (And.intro E.socialContextDefinedClosed E.knowledgeTransmissionDefinedClosed))

end EpistemologySocialEpistemologyCanonicalLaneLean
end HautevilleHouse