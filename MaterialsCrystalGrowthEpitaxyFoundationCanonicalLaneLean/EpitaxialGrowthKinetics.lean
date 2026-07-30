import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean

structure EpitaxialGrowthKineticsPackage where
  substrateSurface : Type u
  adatomFlux : Type v
  diffusionCoefficient : Type w
  nucleationRate : Type x
  islandDensity : Type y
  stepFlowMode : Prop
  layerByLayerMode : Prop
  stranskiKrastanovMode : Prop
  growthTemperature : Prop
  latticeMismatch : Prop

structure EpitaxialGrowthKineticsEvidence (E : EpitaxialGrowthKineticsPackage) where
  stepFlowModeClosed : E.stepFlowMode
  layerByLayerModeClosed : E.layerByLayerMode
  stranskiKrastanovModeClosed : E.stranskiKrastanovMode
  growthTemperatureClosed : E.growthTemperature
  latticeMismatchClosed : E.latticeMismatch

def EpitaxialGrowthKineticsClosed (E : EpitaxialGrowthKineticsPackage) : Prop :=
  E.stepFlowMode ∧ E.layerByLayerMode ∧ E.stranskiKrastanovMode ∧ E.growthTemperature ∧ E.latticeMismatch

theorem epitaxial_growth_kinetics_closed_from_evidence (E : EpitaxialGrowthKineticsPackage) (Ev : EpitaxialGrowthKineticsEvidence E) :
    EpitaxialGrowthKineticsClosed E := by
  exact And.intro Ev.stepFlowModeClosed (And.intro Ev.layerByLayerModeClosed (And.intro Ev.stranskiKrastanovModeClosed (And.intro Ev.growthTemperatureClosed Ev.latticeMismatchClosed)))

end MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean
end HautevilleHouse