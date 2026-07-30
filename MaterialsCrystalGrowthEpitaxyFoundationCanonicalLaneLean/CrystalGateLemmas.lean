import MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean.CrystalBridgeLemmas

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean

def gateClosed (A : CrystalAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : CrystalAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean
end HautevilleHouse