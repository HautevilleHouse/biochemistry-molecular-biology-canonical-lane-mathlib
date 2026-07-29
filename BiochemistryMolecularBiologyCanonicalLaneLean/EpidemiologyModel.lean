import BiochemistryMolecularBiologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMolecularBiologyCanonicalLaneLean

structure EpidemiologyModelPackage where
  compartmentStructure : Prop
  transmissionDynamics : Prop
  reproductionNumber : Prop
  thresholdBehavior : Prop

structure EpidemiologyModelEvidence (E : EpidemiologyModelPackage) where
  compartmentStructureClosed : E.compartmentStructure
  transmissionDynamicsClosed : E.transmissionDynamics
  reproductionNumberClosed : E.reproductionNumber
  thresholdBehaviorClosed : E.thresholdBehavior

def EpidemiologyModelClosed (E : EpidemiologyModelPackage) : Prop :=
  E.compartmentStructure ∧ E.transmissionDynamics ∧ E.reproductionNumber ∧ E.thresholdBehavior

theorem epidemiology_model_closed_from_evidence (E : EpidemiologyModelPackage) (Ev : EpidemiologyModelEvidence E) : EpidemiologyModelClosed E :=
  And.intro Ev.compartmentStructureClosed (And.intro Ev.transmissionDynamicsClosed (And.intro Ev.reproductionNumberClosed Ev.thresholdBehaviorClosed))

end BiochemistryMolecularBiologyCanonicalLaneLean
end HautevilleHouse