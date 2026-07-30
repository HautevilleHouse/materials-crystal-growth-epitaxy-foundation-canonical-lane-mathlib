import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean

structure XRayDiffractionPackage where
  braggLawSatisfied : Prop
  structureFactorComputed : Prop
  reciprocalLatticeMapped : Prop
  extinctionRulesDerived : Prop
  diffractionPatternIndexed : Prop

structure XRayDiffractionEvidence (X : XRayDiffractionPackage) where
  braggLawSatisfiedClosed : X.braggLawSatisfied
  structureFactorComputedClosed : X.structureFactorComputed
  reciprocalLatticeMappedClosed : X.reciprocalLatticeMapped
  extinctionRulesDerivedClosed : X.extinctionRulesDerived
  diffractionPatternIndexedClosed : X.diffractionPatternIndexed

def XRayDiffractionClosed (X : XRayDiffractionPackage) : Prop :=
  X.braggLawSatisfied ∧ X.structureFactorComputed ∧ X.reciprocalLatticeMapped ∧
  X.extinctionRulesDerived ∧ X.diffractionPatternIndexed

theorem xray_diffraction_closed_from_evidence (X : XRayDiffractionPackage)
    (E : XRayDiffractionEvidence X) : XRayDiffractionClosed X := by
  exact And.intro E.braggLawSatisfiedClosed
    (And.intro E.structureFactorComputedClosed
      (And.intro E.reciprocalLatticeMappedClosed
        (And.intro E.extinctionRulesDerivedClosed E.diffractionPatternIndexedClosed)))

end MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean
end HautevilleHouse