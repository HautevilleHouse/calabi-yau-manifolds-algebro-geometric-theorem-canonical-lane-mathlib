import CalabiYauManifoldsAlgebroGeometricTheoremCanonicalLaneLean.CalabiYauAdmissibleClass

namespace HautevilleHouse
namespace CalabiYauManifoldsAlgebroGeometricTheoremCanonicalLaneLean

def bridgeClosed (A : CalabiYauAdmissibleClass) : Prop :=
  CalabiYauWitnessClosed A.object

theorem bridge_from_admissible_class (A : CalabiYauAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.ricciFlat

end CalabiYauManifoldsAlgebroGeometricTheoremCanonicalLaneLean
end HautevilleHouse