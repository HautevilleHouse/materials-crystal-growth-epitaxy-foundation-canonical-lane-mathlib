import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean

structure EpitaxyStructurePackage where
  substrateLattice : Type
  filmLattice : Type
  latticeMismatch : Prop
  interfaceBonding : Prop
  epitaxialGrowthOrientation : Prop
  filmSubstrateRelation : Prop

structure EpitaxyStructureEvidence (E : EpitaxyStructurePackage) where
  latticeMismatchClosed : E.latticeMismatch
  interfaceBondingClosed : E.interfaceBonding
  epitaxialGrowthOrientationClosed : E.epitaxialGrowthOrientation
  filmSubstrateRelationClosed : E.filmSubstrateRelation

def EpitaxyStructureClosed (E : EpitaxyStructurePackage) : Prop :=
  E.latticeMismatch ∧ E.interfaceBonding ∧ E.epitaxialGrowthOrientation ∧
  E.filmSubstrateRelation

theorem epitaxy_structure_closed_from_evidence (E : EpitaxyStructurePackage)
    (Ev : EpitaxyStructureEvidence E) : EpitaxyStructureClosed E := by
  exact And.intro Ev.latticeMismatchClosed
    (And.intro Ev.interfaceBondingClosed
      (And.intro Ev.epitaxialGrowthOrientationClosed Ev.filmSubstrateRelationClosed))

end MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean
end HautevilleHouse