import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean

structure GrowthMechanismPackage where
  nucleationModel : Prop
  surfaceDiffusion : Prop
  stepFlowGrowth : Prop
  screwDislocationDriven : Prop
  epitaxialOrientation : Prop

structure GrowthMechanismEvidence (G : GrowthMechanismPackage) where
  nucleationModelClosed : G.nucleationModel
  surfaceDiffusionClosed : G.surfaceDiffusion
  stepFlowGrowthClosed : G.stepFlowGrowth
  screwDislocationDrivenClosed : G.screwDislocationDriven
  epitaxialOrientationClosed : G.epitaxialOrientation

def GrowthMechanismClosed (G : GrowthMechanismPackage) : Prop :=
  G.nucleationModel ∧ G.surfaceDiffusion ∧ G.stepFlowGrowth ∧
  G.screwDislocationDriven ∧ G.epitaxialOrientation

theorem growth_mechanism_closed_from_evidence (G : GrowthMechanismPackage)
    (E : GrowthMechanismEvidence G) : GrowthMechanismClosed G := by
  exact And.intro E.nucleationModelClosed
    (And.intro E.surfaceDiffusionClosed
      (And.intro E.stepFlowGrowthClosed
        (And.intro E.screwDislocationDrivenClosed E.epitaxialOrientationClosed)))

end MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean
end HautevilleHouse