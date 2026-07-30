import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean

structure XRayDiffractionStructurePackage where
  crystalStructure : Type u
  braggAngle : Type v
  wavelength : Type w
  millerIndices : Type x
  structureFactor : Type y
  braggsLaw : Prop
  systematicAbsences : Prop
  peakIntensity : Prop
  reciprocalLattice : Prop
  extinctionRule : Prop

structure XRayDiffractionStructureEvidence (X : XRayDiffractionStructurePackage) where
  braggsLawClosed : X.braggsLaw
  systematicAbsencesClosed : X.systematicAbsences
  peakIntensityClosed : X.peakIntensity
  reciprocalLatticeClosed : X.reciprocalLattice
  extinctionRuleClosed : X.extinctionRule

def XRayDiffractionStructureClosed (X : XRayDiffractionStructurePackage) : Prop :=
  X.braggsLaw ∧ X.systematicAbsences ∧ X.peakIntensity ∧ X.reciprocalLattice ∧ X.extinctionRule

theorem xray_diffraction_structure_closed_from_evidence (X : XRayDiffractionStructurePackage) (E : XRayDiffractionStructureEvidence X) :
    XRayDiffractionStructureClosed X := by
  exact And.intro E.braggsLawClosed (And.intro E.systematicAbsencesClosed (And.intro E.peakIntensityClosed (And.intro E.reciprocalLatticeClosed E.extinctionRuleClosed)))

end MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean
end HautevilleHouse