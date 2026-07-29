import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalabiYauManifoldsAlgebroGeometricTheoremCanonicalLaneLean

structure CalabiYauAdmittedObject where
  manifold : Type u
  complexStructure : ComplexStructure manifold
  kahlerMetric : KahlerMetric manifold
  firstChernClassZero : Prop
  ricciFlat : Prop

structure CalabiYauAdmissibleClass where
  object : CalabiYauAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : CalabiYauAdmissibleClass) : Prop :=
  CalabiYauWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CalabiYauManifoldsAlgebroGeometricTheoremCanonicalLaneLean
end HautevilleHouse