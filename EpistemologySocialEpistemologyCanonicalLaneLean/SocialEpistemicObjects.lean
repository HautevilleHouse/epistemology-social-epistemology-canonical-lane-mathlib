import Mathlib

namespace HautevilleHouse
namespace EpistemologySocialEpistemologyCanonicalLaneLean

structure SocialEpistemicObject where
  agentSet : Type
  propositions : Type
  knowledgeRelation : agentSet → propositions → Prop
  testimonyStructure : (agentSet → propositions → Prop) → Prop
  conclusion : testimonyStructure knowledgeRelation

def SocialEpistemicWitnessClosed (O : SocialEpistemicObject) : Prop :=
  O.conclusion

structure TestimonyNetwork where
  agents : Type
  edges : agents → agents → Prop
  testimonyContent : agents → agents → propositions → Prop
  trustStructure : Prop
  trustStructureTerm : trustStructure

structure BeliefAggregation where
  agents : Type
  propositions : Type
  individualBeliefs : agents → propositions → Prop
  aggregationRule : (agents → propositions → Prop) → (propositions → Prop)
  consistencyConstraint : Prop
  consistencyConstraintTerm : consistencyConstraint

structure KnowledgeClosurePackage where
  closureUnderTestimony : Prop
  closureUnderDeduction : Prop
  socialConsistency : Prop
  closureUnderTestimonyTerm : closureUnderTestimony
  closureUnderDeductionTerm : closureUnderDeduction
  socialConsistencyTerm : socialConsistency

end EpistemologySocialEpistemologyCanonicalLaneLean
end HautevilleHouse
