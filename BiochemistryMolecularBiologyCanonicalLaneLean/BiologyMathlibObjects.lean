import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMolecularBiologyCanonicalLaneLean

structure BiologicalSystem where
  carrier : Type
  structure : Type

structure BiologyAdmittedObject where
  system : BiologicalSystem
  systemProperty : Prop
  modelConclusion : Prop
  conclusion : modelConclusion

structure BiologyEndgameState where
  object : BiologyAdmittedObject

def BiologyWitnessClosed (O : BiologyAdmittedObject) : Prop :=
  O.modelConclusion

end BiochemistryMolecularBiologyCanonicalLaneLean
end HautevilleHouse