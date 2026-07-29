import BiochemistryMolecularBiologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMolecularBiologyCanonicalLaneLean

structure EvolutionaryGameTheoryPackage where
  payoffMatrix : Prop
  replicatorDynamics : Prop
  essExistence : Prop
  convergenceAnalysis : Prop

structure EvolutionaryGameTheoryEvidence (G : EvolutionaryGameTheoryPackage) where
  payoffMatrixClosed : G.payoffMatrix
  replicatorDynamicsClosed : G.replicatorDynamics
  essExistenceClosed : G.essExistence
  convergenceAnalysisClosed : G.convergenceAnalysis

def EvolutionaryGameTheoryClosed (G : EvolutionaryGameTheoryPackage) : Prop :=
  G.payoffMatrix ∧ G.replicatorDynamics ∧ G.essExistence ∧ G.convergenceAnalysis

theorem evolutionary_game_theory_closed_from_evidence (G : EvolutionaryGameTheoryPackage) (E : EvolutionaryGameTheoryEvidence G) : EvolutionaryGameTheoryClosed G :=
  And.intro E.payoffMatrixClosed (And.intro E.replicatorDynamicsClosed (And.intro E.essExistenceClosed E.convergenceAnalysisClosed))

end BiochemistryMolecularBiologyCanonicalLaneLean
end HautevilleHouse