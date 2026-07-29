import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMolecularBiologyCanonicalLaneLean

structure PrimitiveEnzyme where
  Enzyme : Type
  Substrate : Type
  Product : Type
  bindingAffinity : Prop
  catalyticEfficiency : Prop
  bindingAffinityTerm : bindingAffinity
  catalyticEfficiencyTerm : catalyticEfficiency

structure PrimitiveReaction where
  enzyme : PrimitiveEnzyme
  rateLaw : Prop
  steadyState : Prop
  rateLawTerm : rateLaw
  steadyStateTerm : steadyState

def PrimitiveReaction.toBiochemicalObject (R : PrimitiveReaction) : BiochemicalAdmittedObject :=
  { enzyme := R.enzyme.Enzyme,
    substrate := R.enzyme.Substrate,
    product := R.enzyme.Product,
    reaction := R.rateLaw ∧ R.steadyState,
    conclusion := And.intro R.rateLawTerm R.steadyStateTerm
  }

structure PrimitivePopulation where
  Species : Type
  growthRate : Prop
  competitionCoefficient : Prop
  growthRateTerm : growthRate
  competitionCoefficientTerm : competitionCoefficient

structure PrimitivePopulationModel where
  populations : List PrimitivePopulation
  differentialEquations : Prop
  equilibriumExists : Prop
  differentialEquationsTerm : differentialEquations
  equilibriumExistsTerm : equilibriumExists

end BiochemistryMolecularBiologyCanonicalLaneLean
end HautevilleHouse