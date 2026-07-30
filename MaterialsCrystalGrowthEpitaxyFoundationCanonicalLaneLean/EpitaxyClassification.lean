import MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean

structure EpitaxyPackage (A : AdmissibleClass) where
  substrateMatches : Prop
  filmLatticeMatch : Prop
  misfitDislocations : Prop
  growthMode : Prop

structure EpitaxyEvidence {A : AdmissibleClass} (E : EpitaxyPackage A) where
  substrateMatchesClosed : E.substrateMatches
  filmLatticeMatchClosed : E.filmLatticeMatch
  misfitDislocationsClosed : E.misfitDislocations
  growthModeClosed : E.growthMode

def EpitaxyClosed {A : AdmissibleClass} (E : EpitaxyPackage A) : Prop :=
  E.substrateMatches ∧ E.filmLatticeMatch ∧ E.misfitDislocations ∧ E.growthMode

theorem epitaxy_closed_from_evidence {A : AdmissibleClass}
    (E : EpitaxyPackage A) (ev : EpitaxyEvidence E) : EpitaxyClosed E := by
  exact And.intro ev.substrateMatchesClosed
    (And.intro ev.filmLatticeMatchClosed
      (And.intro ev.misfitDislocationsClosed ev.growthModeClosed))

end MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean
end HautevilleHouse