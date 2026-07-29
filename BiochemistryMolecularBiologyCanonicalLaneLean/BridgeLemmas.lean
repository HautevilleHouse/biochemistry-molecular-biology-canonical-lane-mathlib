import BiochemistryMolecularBiologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMolecularBiologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BiochemicalWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BiochemistryMolecularBiologyCanonicalLaneLean
end HautevilleHouse