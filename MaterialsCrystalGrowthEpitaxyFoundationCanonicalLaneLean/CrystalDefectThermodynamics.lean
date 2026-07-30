import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean

structure CrystalDefectPackage where
  pointDefect : Type
  dislocation : Type
  grainBoundary : Type
  formationEnergy : Prop
  migrationEnergy : Prop
  equilibriumConcentration : Prop
  formationEnergyTerm : formationEnergy
  migrationEnergyTerm : migrationEnergy
  equilibriumConcentrationTerm : equilibriumConcentration

structure CrystalDefectEvidence (D : CrystalDefectPackage) where
  formationEnergyClosed : D.formationEnergy
  migrationEnergyClosed : D.migrationEnergy
  equilibriumConcentrationClosed : D.equilibriumConcentration

def CrystalDefectClosed (D : CrystalDefectPackage) : Prop :=
  D.formationEnergy ∧ D.migrationEnergy ∧ D.equilibriumConcentration

theorem crystal_defect_closed_from_evidence
    (D : CrystalDefectPackage) (Ev : CrystalDefectEvidence D) :
    CrystalDefectClosed D := by
  exact And.intro Ev.formationEnergyClosed
    (And.intro Ev.migrationEnergyClosed Ev.equilibriumConcentrationClosed)

end HautevilleHouse.MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean
end HautevilleHouse
