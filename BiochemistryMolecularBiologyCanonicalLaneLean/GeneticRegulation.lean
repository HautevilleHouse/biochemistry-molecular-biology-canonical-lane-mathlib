import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiochemistryMolecularBiologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMolecularBiologyCanonicalLaneLean

structure GeneticRegulationPackage where
  geneCount : Nat
  transcriptionFactors : Type
  regulatoryNetwork : Prop
  geneExpressionProfile : Prop
  responseToSignal : Prop

structure GeneticRegulationEvidence (G : GeneticRegulationPackage) where
  regulatoryNetworkClosed : G.regulatoryNetwork
  geneExpressionProfileClosed : G.geneExpressionProfile
  responseToSignalClosed : G.responseToSignal

def GeneticRegulationClosed (G : GeneticRegulationPackage) : Prop :=
  G.regulatoryNetwork ∧ G.geneExpressionProfile ∧ G.responseToSignal

theorem genetic_regulation_closed_from_evidence (G : GeneticRegulationPackage) (E : GeneticRegulationEvidence G) : GeneticRegulationClosed G := by
  exact And.intro E.regulatoryNetworkClosed (And.intro E.geneExpressionProfileClosed E.responseToSignalClosed)

end BiochemistryMolecularBiologyCanonicalLaneLean
end HautevilleHouse