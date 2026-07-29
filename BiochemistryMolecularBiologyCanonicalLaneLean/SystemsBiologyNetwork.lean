import BiochemistryMolecularBiologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMolecularBiologyCanonicalLaneLean

structure SystemsBiologyNetworkPackage where
  networkTopology : Prop
  reactionKinetics : Prop
  steadyStateExistence : Prop
  robustnessAnalysis : Prop

structure SystemsBiologyNetworkEvidence (N : SystemsBiologyNetworkPackage) where
  networkTopologyClosed : N.networkTopology
  reactionKineticsClosed : N.reactionKinetics
  steadyStateExistenceClosed : N.steadyStateExistence
  robustnessAnalysisClosed : N.robustnessAnalysis

def SystemsBiologyNetworkClosed (N : SystemsBiologyNetworkPackage) : Prop :=
  N.networkTopology ∧ N.reactionKinetics ∧ N.steadyStateExistence ∧ N.robustnessAnalysis

theorem systems_biology_network_closed_from_evidence (N : SystemsBiologyNetworkPackage) (E : SystemsBiologyNetworkEvidence N) : SystemsBiologyNetworkClosed N :=
  And.intro E.networkTopologyClosed (And.intro E.reactionKineticsClosed (And.intro E.steadyStateExistenceClosed E.robustnessAnalysisClosed))

end BiochemistryMolecularBiologyCanonicalLaneLean
end HautevilleHouse