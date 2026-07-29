import EpistemologySocialEpistemologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologySocialEpistemologyCanonicalLaneLean

structure SocialJustificationPackage where
  justificationType : Type u
  socialContext : Type v
  reliabilityLevel : ℝ
  defeaterCondition : Prop

structure SocialJustificationEvidence (J : SocialJustificationPackage) where
  reliabilityLevelClosed : J.reliabilityLevel > 0
  defeaterConditionClosed : J.defeaterCondition

def SocialJustificationClosed (J : SocialJustificationPackage) : Prop :=
  J.reliabilityLevel > 0 ∧ J.defeaterCondition

theorem social_justification_closed_from_evidence (J : SocialJustificationPackage) (E : SocialJustificationEvidence J) : SocialJustificationClosed J := by
  exact And.intro E.reliabilityLevelClosed E.defeaterConditionClosed

end EpistemologySocialEpistemologyCanonicalLaneLean
end HautevilleHouse