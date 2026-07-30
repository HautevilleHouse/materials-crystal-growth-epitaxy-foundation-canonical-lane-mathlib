import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean

structure VaporDepositionEpitaxyPackage where
  sourceMaterial : Type u
  vaporTransport : Type v
  substrateOrientation : Type w
  growthRate : Type x
  filmMorphology : Type y
  massTransportLimited : Prop
  surfaceKineticsLimited : Prop
  epitaxialAlignment : Prop
  defectFormation : Prop
  interfacialEnergy : Prop

structure VaporDepositionEpitaxyEvidence (V : VaporDepositionEpitaxyPackage) where
  massTransportLimitedClosed : V.massTransportLimited
  surfaceKineticsLimitedClosed : V.surfaceKineticsLimited
  epitaxialAlignmentClosed : V.epitaxialAlignment
  defectFormationClosed : V.defectFormation
  interfacialEnergyClosed : V.interfacialEnergy

def VaporDepositionEpitaxyClosed (V : VaporDepositionEpitaxyPackage) : Prop :=
  V.massTransportLimited ∧ V.surfaceKineticsLimited ∧ V.epitaxialAlignment ∧ V.defectFormation ∧ V.interfacialEnergy

theorem vapor_deposition_epitaxy_closed_from_evidence (V : VaporDepositionEpitaxyPackage) (E : VaporDepositionEpitaxyEvidence V) :
    VaporDepositionEpitaxyClosed V := by
  exact And.intro E.massTransportLimitedClosed (And.intro E.surfaceKineticsLimitedClosed (And.intro E.epitaxialAlignmentClosed (And.intro E.defectFormationClosed E.interfacialEnergyClosed)))

end MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean
end HautevilleHouse