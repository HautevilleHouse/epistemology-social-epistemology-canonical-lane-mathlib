import EpistemologySocialEpistemologyCanonicalLaneLean.EpistemicBridgeLemmas

namespace HautevilleHouse
namespace EpistemologySocialEpistemologyCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end EpistemologySocialEpistemologyCanonicalLaneLean
end HautevilleHouse