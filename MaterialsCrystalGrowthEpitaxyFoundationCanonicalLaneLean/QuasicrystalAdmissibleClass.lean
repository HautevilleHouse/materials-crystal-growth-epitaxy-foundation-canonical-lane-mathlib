import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean

structure QuasicrystalPackage where
  aperiodicOrder : Prop
  longRangeOrder : Prop
  nonCrystallographicSymmetry : Prop
  icosahedralSymmetryPossible : Prop
  decagonalPhaseObserved : Prop

structure QuasicrystalEvidence (Q : QuasicrystalPackage) where
  aperiodicOrderClosed : Q.aperiodicOrder
  longRangeOrderClosed : Q.longRangeOrder
  nonCrystallographicSymmetryClosed : Q.nonCrystallographicSymmetry
  icosahedralSymmetryPossibleClosed : Q.icosahedralSymmetryPossible
  decagonalPhaseObservedClosed : Q.decagonalPhaseObserved

def QuasicrystalClosed (Q : QuasicrystalPackage) : Prop :=
  Q.aperiodicOrder ∧ Q.longRangeOrder ∧ Q.nonCrystallographicSymmetry ∧
  Q.icosahedralSymmetryPossible ∧ Q.decagonalPhaseObserved

theorem quasicrystal_closed_from_evidence (Q : QuasicrystalPackage)
    (E : QuasicrystalEvidence Q) : QuasicrystalClosed Q := by
  exact And.intro E.aperiodicOrderClosed
    (And.intro E.longRangeOrderClosed
      (And.intro E.nonCrystallographicSymmetryClosed
        (And.intro E.icosahedralSymmetryPossibleClosed E.decagonalPhaseObservedClosed)))

end MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean
end HautevilleHouse