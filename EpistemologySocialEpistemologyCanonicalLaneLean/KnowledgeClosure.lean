import EpistemologySocialEpistemologyCanonicalLaneLean.SocialEpistemicObjects

namespace HautevilleHouse
namespace EpistemologySocialEpistemologyCanonicalLaneLean

structure KnowledgeClosureEvidence where
  closureUnderTestimonyClosed : Prop
  closureUnderDeductionClosed : Prop
  socialConsistencyClosed : Prop

def KnowledgeClosureClosed (K : KnowledgeClosurePackage) : Prop :=
  K.closureUnderTestimony ∧ K.closureUnderDeduction ∧ K.socialConsistency

theorem knowledge_closure_closed (K : KnowledgeClosurePackage) (E : KnowledgeClosureEvidence) :
    KnowledgeClosureClosed K := by
  exact And.intro E.closureUnderTestimonyClosed
    (And.intro E.closureUnderDeductionClosed E.socialConsistencyClosed)

end EpistemologySocialEpistemologyCanonicalLaneLean
end HautevilleHouse
