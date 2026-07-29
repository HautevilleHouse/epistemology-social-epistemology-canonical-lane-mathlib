import EpistemologySocialEpistemologyCanonicalLaneLean.EpistemicGateLemmas

namespace HautevilleHouse
namespace EpistemologySocialEpistemologyCanonicalLaneLean

def ConstrainedEpistemicClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_epistemic_endgame (A : AdmissibleClass) : ConstrainedEpistemicClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EpistemologySocialEpistemologyCanonicalLaneLean
end HautevilleHouse