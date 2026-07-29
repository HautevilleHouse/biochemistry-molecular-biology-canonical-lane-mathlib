import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMolecularBiologyCanonicalLaneLean

structure FluxBalancePackage where
  metabolites : List String
  reactions : List (String × List (String × ℝ))
  steadyStateFlux : List ℝ
  optimizationObjective : ℝ
  fluxDistribution : Prop
  fluxDistributionTerm : fluxDistribution

def FluxBalanceClosed (F : FluxBalancePackage) : Prop :=
  F.fluxDistribution

theorem flux_balance_closed_from_evidence (F : FluxBalancePackage)
    (E : F.fluxDistributionTerm) : FluxBalanceClosed F := by
  exact E

end BiochemistryMolecularBiologyCanonicalLaneLean
end HautevilleHouse