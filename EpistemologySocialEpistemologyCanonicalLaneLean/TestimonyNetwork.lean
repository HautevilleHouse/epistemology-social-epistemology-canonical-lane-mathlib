import EpicenterSocialEpistemologyCanonicalLaneLean.EpistemicSource

/-!
# Testimony Network Package

Package defining testimony propagation networks.
-/

namespace HautevilleHouse
namespace EpistemologySocialEpistemologyCanonicalLaneLean

structure TestimonyNetworkPackage (S : EpistemicSourcePackage) where
  nodes : Type u
  edges : Type v
  networkConnectivity : Prop
  transmissionFidelity : Prop
  aggregationMechanism : Prop
  networkConnectivityClosed : networkConnectivity
  transmissionFidelityClosed : transmissionFidelity
  aggregationMechanismClosed : aggregationMechanism

structure TestimonyNetworkEvidence {S : EpistemicSourcePackage}
    (T : TestimonyNetworkPackage S) where
  networkConnectivityClosed : T.networkConnectivity
  transmissionFidelityClosed : T.transmissionFidelity
  aggregationMechanismClosed : T.aggregationMechanism

def TestimonyNetworkClosed {S : EpistemicSourcePackage}
    (T : TestimonyNetworkPackage S) : Prop :=
  T.networkConnectivity ∧ T.transmissionFidelity ∧ T.aggregationMechanism

theorem testimony_network_closed_from_evidence
    {S : EpistemicSourcePackage} (T : TestimonyNetworkPackage S)
    (E : TestimonyNetworkEvidence T) : TestimonyNetworkClosed T := by
  exact And.intro E.networkConnectivityClosed
    (And.intro E.transmissionFidelityClosed E.aggregationMechanismClosed)

end EpistemologySocialEpistemologyCanonicalLaneLean
end HautevilleHouse