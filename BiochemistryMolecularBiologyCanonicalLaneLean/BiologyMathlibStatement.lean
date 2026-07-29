import BiochemistryMolecularBiologyCanonicalLaneLean.FinalTheorem
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMolecularBiologyCanonicalLaneLean

open canonicalLaneMathlib.AdmissibleClass

structure MathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def mathlibProofObligation : MathlibProofObligation := {
  sourceKey := "biochemistry-molecular-biology-canonical-lane"
  theoremObject := "Biochemistry Molecular Biology Canonical Lane"
  commonCoreImported := true
  theoremSpecificDefinitionsNative := true
  theoremSpecificBridgeNative := true
  theoremSpecificAdmittedClosureNative := true
  unrestrictedClassicalClosureNative := false
  carriedGap := "theorem-specific endgame pilot closes over admitted class; unrestricted classical closure remains carried"
}

def theoremSpecificEndgamePilotClosed : Prop :=
  forall A : AdmissibleClass, ConstrainedBiochemistryClosure A

theorem theorem_specific_endgame_pilot_checked : theoremSpecificEndgamePilotClosed :=
  λ A => constrained_biochemistry_endgame A

end BiochemistryMolecularBiologyCanonicalLaneLean
end HautevilleHouse