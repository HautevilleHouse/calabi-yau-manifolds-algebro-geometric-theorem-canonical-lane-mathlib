import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalabiYauManifoldsAlgebroGeometricTheoremCanonicalLaneLean

structure ComplexStructurePackage where
  almostComplex : Type u
  integrable : Prop
  nijenhuisTensorZero : Prop
  holomorphicCoordinates : Prop
  canonicalBundle : Type v
  trivialCanonicalBundle : Prop

structure ComplexStructureEvidence (C : ComplexStructurePackage) where
  integrableClosed : C.integrable
  nijenhuisTensorZeroClosed : C.nijenhuisTensorZero
  holomorphicCoordinatesClosed : C.holomorphicCoordinates
  trivialCanonicalBundleClosed : C.trivialCanonicalBundle

def ComplexStructureClosed (C : ComplexStructurePackage) : Prop :=
  C.integrable ∧ C.nijenhuisTensorZero ∧ C.holomorphicCoordinates ∧ C.trivialCanonicalBundle

theorem complex_structure_closed_from_evidence (C : ComplexStructurePackage) (E : ComplexStructureEvidence C) : ComplexStructureClosed C :=
by
  exact And.intro E.integrableClosed (And.intro E.nijenhuisTensorZeroClosed (And.intro E.holomorphicCoordinatesClosed E.trivialCanonicalBundleClosed))

end CalabiYauManifoldsAlgebroGeometricTheoremCanonicalLaneLean
end HautevilleHouse