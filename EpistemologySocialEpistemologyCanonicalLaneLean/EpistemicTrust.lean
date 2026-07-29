import EpistemologySocialEpistemologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologySocialEpistemologyCanonicalLaneLean

structure EpistemicTrustPackage where
  trustRelation : Type u → Type u → Prop
  trustTransitivity : ∀ {x y z}, trustRelation x y → trustRelation y z → trustRelation x z
  trustUpdate : (Type u → Type u → Prop) → Prop
  trustJustificationLink : Prop

structure EpistemicTrustEvidence (T : EpistemicTrustPackage) where
  trustTransitivityClosed : T.trustTransitivity
  trustJustificationLinkClosed : T.trustJustificationLink

def EpistemicTrustClosed (T : EpistemicTrustPackage) : Prop :=
  T.trustTransitivity ∧ T.trustJustificationLink

theorem epistemic_trust_closed_from_evidence (T : EpistemicTrustPackage) (E : EpistemicTrustEvidence T) : EpistemicTrustClosed T := by
  exact And.intro E.trustTransitivityClosed E.trustJustificationLinkClosed

end EpistemologySocialEpistemologyCanonicalLaneLean
end HautevilleHouse