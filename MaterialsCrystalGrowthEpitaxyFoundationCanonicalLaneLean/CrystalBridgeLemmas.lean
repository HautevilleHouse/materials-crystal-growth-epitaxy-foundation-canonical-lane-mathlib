import MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean.CrystalAdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean

def bridgeClosed (A : CrystalAdmissibleClass) : Prop :=
  CrystalAdmittedClosed A.object

theorem bridge_from_admissible_class (A : CrystalAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean
end HautevilleHouse