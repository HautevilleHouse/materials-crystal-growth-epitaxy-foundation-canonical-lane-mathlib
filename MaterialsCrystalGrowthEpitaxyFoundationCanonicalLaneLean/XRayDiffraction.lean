import MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean.CrystalStructure

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean

structure DiffractionPackage where
  braggAngle : Prop
  structureFactor : Prop
  intensityProfile : Prop
  peakIndexing : Prop

structure DiffractionEvidence (D : DiffractionPackage) where
  braggAngleClosed : D.braggAngle
  structureFactorClosed : D.structureFactor
  intensityProfileClosed : D.intensityProfile
  peakIndexingClosed : D.peakIndexing

def DiffractionClosed (D : DiffractionPackage) : Prop :=
  D.braggAngle ∧ D.structureFactor ∧ D.intensityProfile ∧ D.peakIndexing

theorem diffraction_closed_from_evidence (D : DiffractionPackage)
    (ev : DiffractionEvidence D) : DiffractionClosed D := by
  exact And.intro ev.braggAngleClosed
    (And.intro ev.structureFactorClosed
      (And.intro ev.intensityProfileClosed ev.peakIndexingClosed))

end MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean
end HautevilleHouse