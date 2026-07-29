import EpicenterSocialEpistemologyCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace EpistemologySocialEpistemologyCanonicalLaneLean

structure EpistemicAdmittedObject where
  agent : Type u
  beliefSet : Type v
  justificationStrength : Prop
  testimonyNetworkAccess : Prop
  conclusion : justificationStrength ∧ testimonyNetworkAccess

structure AdmissibleClass where
  object : EpistemicAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.justificationStrength ∧ A.object.testimonyNetworkAccess) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EpistemologySocialEpistemologyCanonicalLaneLean
end HautevilleHouse