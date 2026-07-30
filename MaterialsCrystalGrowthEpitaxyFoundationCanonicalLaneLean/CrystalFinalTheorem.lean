import MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean.CrystalGateLemmas

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean

def ConstrainedCrystalClosure (A : CrystalAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_crystal_endgame (A : CrystalAdmissibleClass) :
    ConstrainedCrystalClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean
end HautevilleHouse