import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalabiYauManifoldsAlgebroGeometricTheoremCanonicalLaneLean

structure CalabiYauSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  complexStructure : ComplexOnManifold carrier
  kahlerMetric : KahlerMetric carrier
  ricciFlat : Prop
  firstChernClassZero : Prop

structure CalabiYauAdmittedObject where
  space : CalabiYauSpace
  threeFold : Bool
  projective : Bool
  calabiConjectureSolution : Prop
  conclusion : calabiConjectureSolution

def CalabiYauWitnessClosed (O : CalabiYauAdmittedObject) : Prop :=
  O.calabiConjectureSolution

end CalabiYauManifoldsAlgebroGeometricTheoremCanonicalLaneLean
end HautevilleHouse