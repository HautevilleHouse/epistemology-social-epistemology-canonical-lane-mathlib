import EpistemologySocialEpistemologyCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace EpistemologySocialEpistemologyCanonicalLaneLean

structure EpistemicAdmittedObject where
  agentSet : Type u
  propositionSet : Type v
  testimonialNetwork : Type w
  reliabilityCondition : Prop
  coherenceCondition : Prop
  conclusion : reliabilityCondition ∧ coherenceCondition

structure AdmissibleClass where
  object : EpistemicAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.reliabilityCondition ∧ A.object.coherenceCondition) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EpistemologySocialEpistemologyCanonicalLaneLean
end HautevilleHouse