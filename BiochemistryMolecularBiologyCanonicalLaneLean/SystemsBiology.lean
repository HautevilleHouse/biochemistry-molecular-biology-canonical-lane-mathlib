import BiochemistryMolecularBiologyCanonicalLaneLean.FinalTheorem
import BiochemistryMolecularBiologyCanonicalLaneLean.EnzymeKinetics
import BiochemistryMolecularBiologyCanonicalLaneLean.PopulationDynamics

namespace HautevilleHouse
namespace BiochemistryMolecularBiologyCanonicalLaneLean

structure SystemsBiologyFoundation where
  enzymeKineticEvidence : MichaelisMentenPackage
  populationDynamicEvidence : LotkaVolterraPackage
  integration : Prop
  integrationTerm : integration

foundationalSystemsObligation : Prop :=
  MichaelisMentenClosed enzymeKineticEvidence ∧
  LotkaVolterraClosed populationDynamicEvidence ∧
  integration

theorem systems_biology_closed_from_foundation (F : SystemsBiologyFoundation) :
    foundationalSystemsObligation := by
  exact And.intro (michaelis_menten_closed_from_evidence F.enzymeKineticEvidence F.enzymeKineticEvidence.stabilityTerm)
    (And.intro (lotka_volterra_closed_from_evidence F.populationDynamicEvidence F.populationDynamicEvidence.coexistenceTerm)
      F.integrationTerm)

end BiochemistryMolecularBiologyCanonicalLaneLean
end HautevilleHouse