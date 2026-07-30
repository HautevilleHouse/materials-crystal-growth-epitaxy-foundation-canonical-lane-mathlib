import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean

structure BravaisLatticePackage where
  latticeType : Type
  unitCell : Type
  centering : Type
  latticeSystemClassified : Prop
  bravaisClassDetermined : Prop

structure BravaisLatticeEvidence (B : BravaisLatticePackage) where
  latticeSystemClassifiedClosed : B.latticeSystemClassified
  bravaisClassDeterminedClosed : B.bravaisClassDetermined

def BravaisLatticeClosed (B : BravaisLatticePackage) : Prop :=
  B.latticeSystemClassified ∧ B.bravaisClassDetermined

theorem bravais_lattice_closed_from_evidence (B : BravaisLatticePackage)
    (E : BravaisLatticeEvidence B) : BravaisLatticeClosed B := by
  exact And.intro E.latticeSystemClassifiedClosed E.bravaisClassDeterminedClosed

end MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean
end HautevilleHouse