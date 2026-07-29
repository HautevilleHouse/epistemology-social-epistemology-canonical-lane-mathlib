import EpistemologySocialEpistemologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologySocialEpistemologyCanonicalLaneLean

structure ConsensusDynamicsPackage where
  initialBeliefs : Type u → Prop
  updateRule : Type u → Type u → Prop
  convergenceCondition : Prop
  stableConsensus : Prop

structure ConsensusDynamicsEvidence (C : ConsensusDynamicsPackage) where
  convergenceConditionClosed : C.convergenceCondition
  stableConsensusClosed : C.stableConsensus

def ConsensusDynamicsClosed (C : ConsensusDynamicsPackage) : Prop :=
  C.convergenceCondition ∧ C.stableConsensus

theorem consensus_dynamics_closed_from_evidence (C : ConsensusDynamicsPackage) (E : ConsensusDynamicsEvidence C) : ConsensusDynamicsClosed C := by
  exact And.intro E.convergenceConditionClosed E.stableConsensusClosed

end EpistemologySocialEpistemologyCanonicalLaneLean
end HautevilleHouse