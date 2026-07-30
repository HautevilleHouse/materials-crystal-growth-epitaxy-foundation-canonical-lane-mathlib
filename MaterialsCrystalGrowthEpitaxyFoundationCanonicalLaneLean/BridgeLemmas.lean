import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EpitaxyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MaterialsCrystalGrowthEpitaxyFoundationCanonicalLaneLean
end HautevilleHouse