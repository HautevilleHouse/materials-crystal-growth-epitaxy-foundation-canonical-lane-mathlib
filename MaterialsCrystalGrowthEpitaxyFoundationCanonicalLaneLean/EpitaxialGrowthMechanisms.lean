import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean

structure EpitaxyGrowthPackage where
  substrateSurface : Type
  adatomKinetics : Type
  nucleationModel : Prop
  growthMode : Prop
  stepFlowCondition : Prop
  layerByLayerCondition : Prop
  nucleationModelTerm : nucleationModel
  growthModeTerm : growthMode
  stepFlowConditionTerm : stepFlowCondition
  layerByLayerConditionTerm : layerByLayerCondition

structure EpitaxyGrowthEvidence (E : EpitaxyGrowthPackage) where
  nucleationModelClosed : E.nucleationModel
  growthModeClosed : E.growthMode
  stepFlowConditionClosed : E.stepFlowCondition
  layerByLayerConditionClosed : E.layerByLayerCondition

def EpitaxyGrowthClosed (E : EpitaxyGrowthPackage) : Prop :=
  E.nucleationModel ∧ E.growthMode ∧ E.stepFlowCondition ∧ E.layerByLayerCondition

theorem epitaxy_growth_closed_from_evidence
    (E : EpitaxyGrowthPackage) (Ev : EpitaxyGrowthEvidence E) :
    EpitaxyGrowthClosed E := by
  exact And.intro Ev.nucleationModelClosed
    (And.intro Ev.growthModeClosed
      (And.intro Ev.stepFlowConditionClosed Ev.layerByLayerConditionClosed))

end HautevilleHouse.MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean
end HautevilleHouse
