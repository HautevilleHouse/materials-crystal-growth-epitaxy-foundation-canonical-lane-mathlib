import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean

structure CrystalSystemPackage where
  spaceGroup : Type u
  latticeParameters : Type v
  bravaisLattice : Type w
  symmetryOperations : Type x
  unitCellVolume : Type y
  crystalFamily : Prop
  centeringType : Prop
  pointGroup : Prop
  spaceGroupNumber : Nat
  friedelsLaw : Prop
  systematicAbsences : Prop

structure CrystalSystemEvidence (C : CrystalSystemPackage) where
  crystalFamilyClosed : C.crystalFamily
  centeringTypeClosed : C.centeringType
  pointGroupClosed : C.pointGroup
  friedelsLawClosed : C.friedelsLaw
  systematicAbsencesClosed : C.systematicAbsences

def CrystalSystemClosed (C : CrystalSystemPackage) : Prop :=
  C.crystalFamily ∧ C.centeringType ∧ C.pointGroup ∧ C.friedelsLaw ∧ C.systematicAbsences

theorem crystal_system_closed_from_evidence (C : CrystalSystemPackage) (E : CrystalSystemEvidence C) :
    CrystalSystemClosed C := by
  exact And.intro E.crystalFamilyClosed (And.intro E.centeringTypeClosed (And.intro E.pointGroupClosed (And.intro E.friedelsLawClosed E.systematicAbsencesClosed)))

end MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean
end HautevilleHouse