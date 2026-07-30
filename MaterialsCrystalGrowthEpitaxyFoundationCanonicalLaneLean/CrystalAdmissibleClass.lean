import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean

structure CrystalAdmittedObject where
  crystalStructure : Type
  bravaisLattice : Prop
  spaceGroup : Prop
  symmetryOperations : Prop
  conclusion : symmetryOperations

structure CrystalAdmissibleClass where
  object : CrystalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def CrystalAdmittedClosed (O : CrystalAdmittedObject) : Prop :=
  O.symmetryOperations

end MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean
end HautevilleHouse