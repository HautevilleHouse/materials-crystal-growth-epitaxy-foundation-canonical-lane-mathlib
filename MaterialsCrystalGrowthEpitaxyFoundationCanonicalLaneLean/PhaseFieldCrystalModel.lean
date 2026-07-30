import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean

structure PhaseFieldCrystalPackage where
  orderParameter : Type
  freeEnergyFunctional : Prop
  elasticConstants : Prop
  nucleationBarrier : Prop
  growthVelocity : Prop
  freeEnergyFunctionalTerm : freeEnergyFunctional
  elasticConstantsTerm : elasticConstants
  nucleationBarrierTerm : nucleationBarrier
  growthVelocityTerm : growthVelocity

structure PhaseFieldCrystalEvidence (P : PhaseFieldCrystalPackage) where
  freeEnergyFunctionalClosed : P.freeEnergyFunctional
  elasticConstantsClosed : P.elasticConstants
  nucleationBarrierClosed : P.nucleationBarrier
  growthVelocityClosed : P.growthVelocity

def PhaseFieldCrystalClosed (P : PhaseFieldCrystalPackage) : Prop :=
  P.freeEnergyFunctional ∧ P.elasticConstants ∧ P.nucleationBarrier ∧ P.growthVelocity

theorem phase_field_crystal_closed_from_evidence
    (P : PhaseFieldCrystalPackage) (Ev : PhaseFieldCrystalEvidence P) :
    PhaseFieldCrystalClosed P := by
  exact And.intro Ev.freeEnergyFunctionalClosed
    (And.intro Ev.elasticConstantsClosed
      (And.intro Ev.nucleationBarrierClosed Ev.growthVelocityClosed))

end HautevilleHouse.MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean
end HautevilleHouse
