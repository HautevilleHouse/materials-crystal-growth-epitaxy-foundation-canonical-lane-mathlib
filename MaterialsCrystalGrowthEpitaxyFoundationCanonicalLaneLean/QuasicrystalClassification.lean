import MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean.CrystalAdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean

structure QuasicrystalPackage where
  aperiodicOrder : Prop
  diffractionPattern : Prop
  icosahedralSymmetry : Prop
  phasonStrainModeled : Prop
  tilingConstruction : Prop

structure QuasicrystalEvidence (Q : QuasicrystalPackage) where
  aperiodicOrderClosed : Q.aperiodicOrder
  diffractionPatternClosed : Q.diffractionPattern
  icosahedralSymmetryClosed : Q.icosahedralSymmetry
  phasonStrainModeledClosed : Q.phasonStrainModeled
  tilingConstructionClosed : Q.tilingConstruction

def QuasicrystalClosed (Q : QuasicrystalPackage) : Prop :=
  Q.aperiodicOrder ∧ Q.diffractionPattern ∧ Q.icosahedralSymmetry ∧
  Q.phasonStrainModeled ∧ Q.tilingConstruction

theorem quasicrystal_closed_from_evidence (Q : QuasicrystalPackage) (E : QuasicrystalEvidence Q) :
    QuasicrystalClosed Q := by
  exact And.intro E.apenodicOrderClosed
    (And.intro E.diffractionPatternClosed
      (And.intro E.icosahedralSymmetryClosed
        (And.intro E.phasonStrainModeledClosed E.tilingConstructionClosed)))

end MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean
end HautevilleHouse