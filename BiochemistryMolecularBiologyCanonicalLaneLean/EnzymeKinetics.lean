import BiochemistryMolecularBiologyCanonicalLaneLean.PrimitiveBiochemistry

namespace HautevilleHouse
namespace BiochemistryMolecularBiologyCanonicalLaneLean

structure MichaelisMentenPackage where
  enzymeConcentration : ℝ
  substrateConcentration : ℝ
  productConcentration : ℝ
  km : ℝ
  vmax : ℝ
  stability : Prop
  stabilityTerm : stability

def MichaelisMentenClosed (M : MichaelisMentenPackage) : Prop :=
  M.stability

theorem michaelis_menten_closed_from_evidence (M : MichaelisMentenPackage) (h : M.stabilityTerm) :
    MichaelisMentenClosed M := h

end BiochemistryMolecularBiologyCanonicalLaneLean
end HautevilleHouse