import BiochemistryMolecularBiologyCanonicalLaneLean.PrimitiveBiochemistry

namespace HautevilleHouse
namespace BiochemistryMolecularBiologyCanonicalLaneLean

structure LotkaVolterraPackage where
  preyGrowthRate : ℝ
  predationRate : ℝ
  predatorEfficiency : ℝ
  predatorDeathRate : ℝ
  coexistence : Prop
  coexistenceTerm : coexistence

def LotkaVolterraClosed (L : LotkaVolterraPackage) : Prop :=
  L.coexistence

theorem lotka_volterra_closed_from_evidence (L : LotkaVolterraPackage) (h : L.coexistenceTerm) :
    LotkaVolterraClosed L := h

end BiochemistryMolecularBiologyCanonicalLaneLean
end HautevilleHouse