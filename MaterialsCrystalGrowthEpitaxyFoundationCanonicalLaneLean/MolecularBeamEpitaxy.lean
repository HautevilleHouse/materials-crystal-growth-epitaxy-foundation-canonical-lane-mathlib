import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean

structure MolecularBeamEpitaxyPackage where
  ultraHighVacuum : Type u
  effusionCell : Type v
  reflectionHighEnergyElectronDiffraction : Type w
  shutteredGrowth : Type x
  dopingControl : Type y
  layerByLayerGrowth : Prop
  abruptInterfaces : Prop
  inSituMonitoring : Prop
  twoDimensionalGrowth : Prop
  segregationControl : Prop

structure MolecularBeamEpitaxyEvidence (M : MolecularBeamEpitaxyPackage) where
  layerByLayerGrowthClosed : M.layerByLayerGrowth
  abruptInterfacesClosed : M.abruptInterfaces
  inSituMonitoringClosed : M.inSituMonitoring
  twoDimensionalGrowthClosed : M.twoDimensionalGrowth
  segregationControlClosed : M.segregationControl

def MolecularBeamEpitaxyClosed (M : MolecularBeamEpitaxyPackage) : Prop :=
  M.layerByLayerGrowth ∧ M.abruptInterfaces ∧ M.inSituMonitoring ∧ M.twoDimensionalGrowth ∧ M.segregationControl

theorem molecular_beam_epitaxy_closed_from_evidence (M : MolecularBeamEpitaxyPackage) (E : MolecularBeamEpitaxyEvidence M) :
    MolecularBeamEpitaxyClosed M := by
  exact And.intro E.layerByLayerGrowthClosed (And.intro E.abruptInterfacesClosed (And.intro E.inSituMonitoringClosed (And.intro E.twoDimensionalGrowthClosed E.segregationControlClosed)))

end MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean
end HautevilleHouse