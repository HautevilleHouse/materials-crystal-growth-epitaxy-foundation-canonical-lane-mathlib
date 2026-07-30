import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean

structure LiquidPhaseEpitaxyPackage where
  solutionComposition : Type u
  coolingRate : Type v
  substrateWetting : Type w
  nucleationBarrier : Type x
  layerUniformity : Type y
  equilibriumPhaseDiagram : Prop
  diffusionControlledGrowth : Prop
  latticeMatching : Prop
  segregationCoefficient : Prop
  constitutionalSupercooling : Prop

structure LiquidPhaseEpitaxyEvidence (L : LiquidPhaseEpitaxyPackage) where
  equilibriumPhaseDiagramClosed : L.equilibriumPhaseDiagram
  diffusionControlledGrowthClosed : L.diffusionControlledGrowth
  latticeMatchingClosed : L.latticeMatching
  segregationCoefficientClosed : L.segregationCoefficient
  constitutionalSupercoolingClosed : L.constitutionalSupercooling

def LiquidPhaseEpitaxyClosed (L : LiquidPhaseEpitaxyPackage) : Prop :=
  L.equilibriumPhaseDiagram ∧ L.diffusionControlledGrowth ∧ L.latticeMatching ∧ L.segregationCoefficient ∧ L.constitutionalSupercooling

theorem liquid_phase_epitaxy_closed_from_evidence (L : LiquidPhaseEpitaxyPackage) (E : LiquidPhaseEpitaxyEvidence L) :
    LiquidPhaseEpitaxyClosed L := by
  exact And.intro E.equilibriumPhaseDiagramClosed (And.intro E.diffusionControlledGrowthClosed (And.intro E.latticeMatchingClosed (And.intro E.segregationCoefficientClosed E.constitutionalSupercoolingClosed)))

end MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean
end HautevilleHouse