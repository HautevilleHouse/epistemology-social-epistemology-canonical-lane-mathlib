import canonicalLaneMathlib.AdmissibleClass
import EpistemologySocialEpistemologyCanonicalLaneLean.TestimonyNetwork

namespace HautevilleHouse
namespace EpistemologySocialEpistemologyCanonicalLaneLean

structure JustificationStructure {A : EpistemicAgent} (T : TestimonyNetwork A) where
  coherence : Prop
  foundationalBeliefs : Prop
  inferentialSupport : Prop
  defeaterHandling : Prop

structure JustificationStructureEvidence {A : EpistemicAgent} {T : TestimonyNetwork A}
    (J : JustificationStructure T) where
  coherenceClosed : J.coherence
  foundationalBeliefsClosed : J.foundationalBeliefs
  inferentialSupportClosed : J.inferentialSupport
  defeaterHandlingClosed : J.defeaterHandling

def JustificationStructureClosed {A : EpistemicAgent} {T : TestimonyNetwork A}
    (J : JustificationStructure T) : Prop :=
  J.coherence ∧ J.foundationalBeliefs ∧ J.inferentialSupport ∧ J.defeaterHandling

theorem justification_structure_closed_from_evidence {A : EpistemicAgent} {T : TestimonyNetwork A}
    (J : JustificationStructure T) (E : JustificationStructureEvidence J) :
    JustificationStructureClosed J := by
  exact And.intro E.coherenceClosed
    (And.intro E.foundationalBeliefsClosed
      (And.intro E.inferentialSupportClosed E.defeaterHandlingClosed))

end EpistemologySocialEpistemologyCanonicalLaneLean
end HautevilleHouse