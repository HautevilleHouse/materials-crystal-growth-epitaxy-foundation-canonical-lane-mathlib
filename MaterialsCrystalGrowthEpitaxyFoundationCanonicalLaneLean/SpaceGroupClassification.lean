import MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean.CrystalAdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean

structure SpaceGroupPackage where
  bravaisTypeClassified : Prop
  symmorphicDetermined : Prop
  hmSymbolAssigned : Prop
  siteSymmetriesCatalogued : Prop

structure SpaceGroupEvidence (S : SpaceGroupPackage) where
  bravaisTypeClassifiedClosed : S.bravaisTypeClassified
  symmorphicDeterminedClosed : S.symmorphicDetermined
  hmSymbolAssignedClosed : S.hmSymbolAssigned
  siteSymmetriesCataloguedClosed : S.siteSymmetriesCatalogued

def SpaceGroupClosed (S : SpaceGroupPackage) : Prop :=
  S.bravaisTypeClassified ∧ S.symmorphicDetermined ∧
  S.hmSymbolAssigned ∧ S.siteSymmetriesCatalogued

theorem space_group_closed_from_evidence (S : SpaceGroupPackage) (E : SpaceGroupEvidence S) :
    SpaceGroupClosed S := by
  exact And.intro E.bravaisTypeClassifiedClosed
    (And.intro E.symmorphicDeterminedClosed
      (And.intro E.hmSymbolAssignedClosed E.siteSymmetriesCataloguedClosed))

end MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean
end HautevilleHouse