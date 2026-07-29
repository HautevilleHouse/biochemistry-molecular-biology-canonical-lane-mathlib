import BiochemistryMolecularBiologyCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BiochemistryMolecularBiologyCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BiochemistryMolecularBiologyCanonicalLaneLean
end HautevilleHouse