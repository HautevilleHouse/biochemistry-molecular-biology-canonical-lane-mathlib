import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMolecularBiologyCanonicalLaneLean

structure BiochemicalAdmittedObject where
  enzyme : Type
  substrate : Type
  product : Type
  reaction : Prop
  conclusion : reaction

structure AdmissibleClass where
  object : BiochemicalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BiochemicalWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def BiochemicalWitnessClosed (O : BiochemicalAdmittedObject) : Prop :=
  O.reaction

end BiochemistryMolecularBiologyCanonicalLaneLean
end HautevilleHouse