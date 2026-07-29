import CalabiYauManifoldsAlgebroGeometricTheoremCanonicalLaneLean.CalabiYauBridgeLemmas

namespace HautevilleHouse
namespace CalabiYauManifoldsAlgebroGeometricTheoremCanonicalLaneLean

def gateClosed (A : CalabiYauAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : CalabiYauAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CalabiYauManifoldsAlgebroGeometricTheoremCanonicalLaneLean
end HautevilleHouse