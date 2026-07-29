import EpistemologySocialEpistemologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologySocialEpistemologyCanonicalLaneLean

structure TestimonialNetworkPackage where
  agents : Type u
  statements : Type v
  endorsementGraph : agents → agents → Prop
  coherenceCondition : ∀ a b, endorsementGraph a b → endorsementGraph b a → True
  truthTracking : (agents → statements → Prop) → Prop

structure TestimonialNetworkEvidence (T : TestimonialNetworkPackage) where
  coherenceConditionClosed : T.coherenceCondition
  truthTrackingClosed : T.truthTracking (λ _ _ => True)

def TestimonialNetworkClosed (T : TestimonialNetworkPackage) : Prop :=
  T.coherenceCondition ∧ T.truthTracking (λ _ _ => True)

theorem testimonial_network_closed_from_evidence (T : TestimonialNetworkPackage) (E : TestimonialNetworkEvidence T) : TestimonialNetworkClosed T := by
  exact And.intro E.coherenceConditionClosed E.truthTrackingClosed

end EpistemologySocialEpistemologyCanonicalLaneLean
end HautevilleHouse