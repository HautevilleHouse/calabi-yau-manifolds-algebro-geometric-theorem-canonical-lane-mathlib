import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalabiYauManifoldsAlgebroGeometricTheoremCanonicalLaneLean

structure CalabiYauSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  complexStructure : ComplexStructure carrier
  kahlerMetric : KahlerMetric carrier

structure CalabiYauAdmittedObject where
  space : CalabiYauSpace
  compactKahler : Prop
  ricciFlat : Prop
  conclusion : ricciFlat

structure CalabiYauEndgameState where
  object : CalabiYauAdmittedObject

def CalabiYauWitnessClosed (O : CalabiYauAdmittedObject) : Prop :=
  O.ricciFlat

structure AdmissibleClass where
  object : CalabiYauAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CalabiYauWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CalabiYauManifoldsAlgebroGeometricTheoremCanonicalLaneLean
end HautevilleHouse
