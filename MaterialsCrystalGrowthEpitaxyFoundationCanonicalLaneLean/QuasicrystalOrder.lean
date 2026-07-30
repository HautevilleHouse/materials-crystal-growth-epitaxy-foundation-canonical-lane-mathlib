import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean

structure QuasicrystalOrderPackage where
  aperiodicStructure : Type u
  penroseTiling : Type v
  diffractionPattern : Type w
  forbiddenSymmetry : Type x
  higherDimensionalEmbedding : Type y
  longRangeOrder : Prop
  selfSimilarity : Prop
  crystallographicForbiddenAxes : Prop
  indexationScheme : Prop
  phasonStrain : Prop

structure QuasicrystalOrderEvidence (Q : QuasicrystalOrderPackage) where
  longRangeOrderClosed : Q.longRangeOrder
  selfSimilarityClosed : Q.selfSimilarity
  crystallographicForbiddenAxesClosed : Q.crystallographicForbiddenAxes
  indexationSchemeClosed : Q.indexationScheme
  phasonStrainClosed : Q.phasonStrain

def QuasicrystalOrderClosed (Q : QuasicrystalOrderPackage) : Prop :=
  Q.longRangeOrder ∧ Q.selfSimilarity ∧ Q.crystallographicForbiddenAxes ∧ Q.indexationScheme ∧ Q.phasonStrain

theorem quasicrystal_order_closed_from_evidence (Q : QuasicrystalOrderPackage) (E : QuasicrystalOrderEvidence Q) :
    QuasicrystalOrderClosed Q := by
  exact And.intro E.longRangeOrderClosed (And.intro E.selfSimilarityClosed (And.intro E.crystallographicForbiddenAxesClosed (And.intro E.indexationSchemeClosed E.phasonStrainClosed)))

end MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean
end HautevilleHouse