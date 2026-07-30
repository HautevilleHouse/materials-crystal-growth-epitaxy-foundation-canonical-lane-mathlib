import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : EpitaxyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EpitaxyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean
end HautevilleHouse