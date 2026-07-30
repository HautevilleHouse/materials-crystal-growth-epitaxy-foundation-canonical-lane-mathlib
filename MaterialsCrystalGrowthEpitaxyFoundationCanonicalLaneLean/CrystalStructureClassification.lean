import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean

structure CrystalStructurePackage where
  spaceGroup : Type
  bravaisLattice : Type
  pointGroup : Type
  spaceGroupClassified : Prop
  bravaisLatticeDetermined : Prop
  siteSymmetryProp : Prop
  spaceGroupClassifiedTerm : spaceGroupClassified
  bravaisLatticeDeterminedTerm : bravaisLatticeDetermined
  siteSymmetryPropTerm : siteSymmetryProp

structure CrystalStructureEvidence (C : CrystalStructurePackage) where
  spaceGroupClassifiedClosed : C.spaceGroupClassified
  bravaisLatticeDeterminedClosed : C.bravaisLatticeDetermined
  siteSymmetryPropClosed : C.siteSymmetryProp

def CrystalStructureClosed (C : CrystalStructurePackage) : Prop :=
  C.spaceGroupClassified ∧ C.bravaisLatticeDetermined ∧ C.siteSymmetryProp

theorem crystal_structure_closed_from_evidence
    (C : CrystalStructurePackage) (E : CrystalStructureEvidence C) :
    CrystalStructureClosed C := by
  exact And.intro E.spaceGroupClassifiedClosed
    (And.intro E.bravaisLatticeDeterminedClosed E.siteSymmetryPropClosed)

end HautevilleHouse.MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean
end HautevilleHouse
