import EpicenterSocialEpistemologyCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace EpistemologySocialEpistemologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.justificationStrength ∧ A.object.testimonyNetworkAccess

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EpistemologySocialEpistemologyCanonicalLaneLean
end HautevilleHouse