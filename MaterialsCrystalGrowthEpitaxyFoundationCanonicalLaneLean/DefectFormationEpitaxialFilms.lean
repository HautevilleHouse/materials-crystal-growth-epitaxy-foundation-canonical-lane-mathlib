import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean

structure DefectFormationEpitaxialFilmsPackage where
  threadingDislocation : Type u
  stackingFault : Type v
  pointDefect : Type w
  misfitDislocation : Type x
  antiphaseBoundary : Type y
  criticalThickness : Prop
  matthewsBlakesleeModel : Prop
  burgersVector : Prop
  defectDensity : Prop
  strainRelaxation : Prop

structure DefectFormationEpitaxialFilmsEvidence (D : DefectFormationEpitaxialFilmsPackage) where
  criticalThicknessClosed : D.criticalThickness
  matthewsBlakesleeModelClosed : D.matthewsBlakesleeModel
  burgersVectorClosed : D.burgersVector
  defectDensityClosed : D.defectDensity
  strainRelaxationClosed : D.strainRelaxation

def DefectFormationEpitaxialFilmsClosed (D : DefectFormationEpitaxialFilmsPackage) : Prop :=
  D.criticalThickness ∧ D.matthewsBlakesleeModel ∧ D.burgersVector ∧ D.defectDensity ∧ D.strainRelaxation

theorem defect_formation_epitaxial_films_closed_from_evidence (D : DefectFormationEpitaxialFilmsPackage) (E : DefectFormationEpitaxialFilmsEvidence D) :
    DefectFormationEpitaxialFilmsClosed D := by
  exact And.intro E.criticalThicknessClosed (And.intro E.matthewsBlakesleeModelClosed (And.intro E.burgersVectorClosed (And.intro E.defectDensityClosed E.strainRelaxationClosed)))

end MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean
end HautevilleHouse