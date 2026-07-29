import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologySocialEpistemologyCanonicalLaneLean

structure EpistemicAgent where
  id : String
  beliefs : Prop

structure Testimony (A : EpistemicAgent) (B : EpistemicAgent) where
  source : A
  target : B
  content : Prop
  sourceCredible : Prop
  targetAccepts : Prop

structure SocialEpistemicState where
  agents : List EpistemicAgent
  testimonies : List (Σ A B : EpistemicAgent, Testimony A B)
  consensus : Prop
  bridgeClosed : Prop
  gateClosed : Prop

def bridgeClosed (S : SocialEpistemicState) : Prop :=
  S.consensus → S.bridgeClosed

def gateClosed (S : SocialEpistemicState) : Prop :=
  S.consensus → S.gateClosed

theorem bridge_from_admissible_class (S : SocialEpistemicState) (h : S.consensus) : bridgeClosed S := by
  intro hc
  exact hc

theorem gate_from_admissible_class (S : SocialEpistemicState) (h : S.consensus) : gateClosed S := by
  intro hg
  exact hg

end EpistemologySocialEpistemologyCanonicalLaneLean
end HautevilleHouse