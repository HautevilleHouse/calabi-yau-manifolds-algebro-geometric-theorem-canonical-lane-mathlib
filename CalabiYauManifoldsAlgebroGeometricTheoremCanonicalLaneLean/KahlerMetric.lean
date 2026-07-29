import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalabiYauManifoldsAlgebroGeometricTheoremCanonicalLaneLean

structure KahlerMetricPackage {M : ComplexManifoldPackage} (K : KahlerStructurePackage M) where
  ricciForm : Prop
  firstChernClass : Prop
  firstChernClassZero : firstChernClass = 0
  ricciFlatMetricExists : Prop

structure KahlerMetricEvidence {M : ComplexManifoldPackage} {K : KahlerStructurePackage M}
    (P : KahlerMetricPackage K) where
  ricciFlatMetricExistsClosed : P.ricciFlatMetricExists

def KahlerMetricClosed {M : ComplexManifoldPackage} {K : KahlerStructurePackage M}
    (P : KahlerMetricPackage K) : Prop :=
  P.ricciFlatMetricExists

theorem kahler_metric_closed_from_evidence {M : ComplexManifoldPackage}
    {K : KahlerStructurePackage M} (P : KahlerMetricPackage K)
    (E : KahlerMetricEvidence P) : KahlerMetricClosed P := by
  exact E.ricciFlatMetricExistsClosed

end CalabiYauManifoldsAlgebroGeometricTheoremCanonicalLaneLean
end HautevilleHouse