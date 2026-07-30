import MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean.CrystalAdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean

structure XRayDiffractionPackage where
  laueEquations : Prop
  braggLaw : Prop
  structureFactorComputed : Prop
  extinctionRulesDerived : Prop
  debyeWallerEffect : Prop

structure XRayDiffractionEvidence (X : XRayDiffractionPackage) where
  laueEquationsClosed : X.laueEquations
  braggLawClosed : X.braggLaw
  structureFactorComputedClosed : X.structureFactorComputed
  extinctionRulesDerivedClosed : X.extinctionRulesDerived
  debyeWallerEffectClosed : X.debyeWallerEffect

def XRayDiffractionClosed (X : XRayDiffractionPackage) : Prop :=
  X.laueEquations ∧ X.braggLaw ∧ X.structureFactorComputed ∧
  X.extinctionRulesDerived ∧ X.debyeWallerEffect

theorem xray_diffraction_closed_from_evidence (X : XRayDiffractionPackage) (E : XRayDiffractionEvidence X) :
    XRayDiffractionClosed X := by
  exact And.intro E.laueEquationsClosed
    (And.intro E.braggLawClosed
      (And.intro E.structureFactorComputedClosed
        (And.intro E.extinctionRulesDerivedClosed E.debyeWallerEffectClosed)))

end MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean
end HautevilleHouse