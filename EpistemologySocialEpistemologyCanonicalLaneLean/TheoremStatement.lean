import EpistemologySocialEpistemologyCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace EpistemologySocialEpistemologyCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  socialConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "epistemology-social-epistemology-canonical-lane"
  , theoremName := "social epistemology knowledge closure"
  , theoremObject := "knowledgeClaim"
  , classicalBoundary := "social testimony gap"
  , socialConstrainedStatement := "social epistemology constrained theorem closed via admissible class bridge and gate"
  , certificateLane := "social_epistemology_constrained"
  , carriedRemainder := "unrestricted classical skepticism remains carried"
  }

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = "epistemology-social-epistemology-canonical-lane" :=
  rfl

theorem constrained_social_epistemology_closure_holds (A : AdmissibleClass) :
    ConstrainedSocialEpistemologyClosure A :=
  constrained_social_epistemology_endgame A

end EpistemologySocialEpistemologyCanonicalLaneLean
end HautevilleHouse