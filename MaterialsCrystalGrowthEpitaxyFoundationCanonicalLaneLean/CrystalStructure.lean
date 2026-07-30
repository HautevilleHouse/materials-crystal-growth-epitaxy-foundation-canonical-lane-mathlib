import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean

structure SymmetrySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure AdmittedCrystal where
  space : SymmetrySpace
  bravaisLattice : Prop
  spaceGroup : Prop
  latticeParameters : Prop
  conclusion : bravaisLattice ∧ spaceGroup ∧ latticeParameters

structure CrystalEndgameState where
  object : AdmittedCrystal

def CrystalWitnessClosed (O : AdmittedCrystal) : Prop :=
  O.conclusion

end MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean
end HautevilleHouse