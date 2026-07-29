import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EpistemologySocialEpistemologyCanonicalLaneLean.TestimonyAdmissible
import HautevilleHouse.EpistemologySocialEpistemologyCanonicalLaneLean.ConsensusClosure

namespace HautevilleHouse
namespace EpistemologySocialEpistemologyCanonicalLaneLean

def ConstrainedSocialEpistemologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_social_epistemology_endgame (A : AdmissibleClass) : ConstrainedSocialEpistemologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EpistemologySocialEpistemologyCanonicalLaneLean
end HautevilleHouse