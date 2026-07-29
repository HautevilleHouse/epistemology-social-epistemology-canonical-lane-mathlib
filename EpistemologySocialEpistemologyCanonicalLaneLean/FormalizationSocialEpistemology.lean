import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologySocialEpistemologyCanonicalLaneLean

structure FormalizationSocialEpistemologyPackage where
  epistemicLogicFormalized : Prop
  socialEpistemicDynamicsFormalized : Prop
  testimonyTransmissionFormalized : Prop
  groupKnowledgeFormalized : Prop

structure FormalizationSocialEpistemologyEvidence (P : FormalizationSocialEpistemologyPackage) where
  epistemicLogicFormalizedClosed : P.epistemicLogicFormalized
  socialEpistemicDynamicsFormalizedClosed : P.socialEpistemicDynamicsFormalized
  testimonyTransmissionFormalizedClosed : P.testimonyTransmissionFormalized
  groupKnowledgeFormalizedClosed : P.groupKnowledgeFormalized

def FormalizationSocialEpistemologyClosed (P : FormalizationSocialEpistemologyPackage) : Prop :=
  P.epistemicLogicFormalized ∧ P.socialEpistemicDynamicsFormalized ∧
  P.testimonyTransmissionFormalized ∧ P.groupKnowledgeFormalized

theorem formalization_social_epistemology_closed_from_evidence (P : FormalizationSocialEpistemologyPackage) (E : FormalizationSocialEpistemologyEvidence P) :
    FormalizationSocialEpistemologyClosed P := by
  exact And.intro E.epistemicLogicFormalizedClosed
    (And.intro E.socialEpistemicDynamicsFormalizedClosed
      (And.intro E.testimonyTransmissionFormalizedClosed E.groupKnowledgeFormalizedClosed))

end EpistemologySocialEpistemologyCanonicalLaneLean
end HautevilleHouse