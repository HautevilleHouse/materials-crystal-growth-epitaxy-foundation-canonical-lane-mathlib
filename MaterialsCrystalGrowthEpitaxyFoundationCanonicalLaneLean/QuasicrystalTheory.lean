import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean

structure QuasicrystalPackage where
  aperiodicOrder : Type
  penroseTiling : Prop
  diffractionPattern : Prop
  cutAndProjectMethod : Prop
  icosahedralSymmetry : Prop
  penroseTilingTerm : penroseTiling
  diffractionPatternTerm : diffractionPattern
  cutAndProjectMethodTerm : cutAndProjectMethod
  icosahedralSymmetryTerm : icosahedralSymmetry

structure QuasicrystalEvidence (Q : QuasicrystalPackage) where
  penroseTilingClosed : Q.penroseTiling
  diffractionPatternClosed : Q.diffractionPattern
  cutAndProjectMethodClosed : Q.cutAndProjectMethod
  icosahedralSymmetryClosed : Q.icosahedralSymmetry

def QuasicrystalClosed (Q : QuasicrystalPackage) : Prop :=
  Q.penroseTiling ∧ Q.diffractionPattern ∧ Q.cutAndProjectMethod ∧ Q.icosahedralSymmetry

theorem quasicrystal_closed_from_evidence
    (Q : QuasicrystalPackage) (Ev : QuasicrystalEvidence Q) :
    QuasicrystalClosed Q := by
  exact And.intro Ev.penroseTilingClosed
    (And.intro Ev.diffractionPatternClosed
      (And.intro Ev.cutAndProjectMethodClosed Ev.icosahedralSymmetryClosed))

end HautevilleHouse.MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean
end HautevilleHouse
