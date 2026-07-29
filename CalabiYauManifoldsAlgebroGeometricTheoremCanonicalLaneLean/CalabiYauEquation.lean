import CalabiYauManifoldsAlgebroGeometricTheoremCanonicalLaneLean.KahlerMetric

namespace HautevilleHouse
namespace CalabiYauManifoldsAlgebroGeometricTheoremCanonicalLaneLean

structure CalabiYauEquation (M : Type u) [ComplexStructure M] (K : KahlerMetric M) where
  ricciFormEqualToZero : Prop
  firstChernClassTrivial : Prop
  existsRicciFlatMetric : Prop

structure CalabiYauEquationEvidence (M : Type u) [ComplexStructure M] (K : KahlerMetric M)
    (E : CalabiYauEquation M K) where
  ricciFormZeroClosed : E.ricciFormEqualToZero
  firstChernClassTrivialClosed : E.firstChernClassTrivial
  existsRicciFlatMetricClosed : E.existsRicciFlatMetric

def CalabiYauEquationClosed (M : Type u) [ComplexStructure M] (K : KahlerMetric M)
    (E : CalabiYauEquation M K) : Prop :=
  E.ricciFormEqualToZero ∧ E.firstChernClassTrivial ∧ E.existsRicciFlatMetric

theorem calabi_yau_equation_closed_from_evidence (M : Type u) [ComplexStructure M] (K : KahlerMetric M)
    (E : CalabiYauEquation M K) (Ev : CalabiYauEquationEvidence M K E) :
    CalabiYauEquationClosed M K E := by
  exact And.intro Ev.ricciFormZeroClosed (And.intro Ev.firstChernClassTrivialClosed Ev.existsRicciFlatMetricClosed)

end CalabiYauManifoldsAlgebroGeometricTheoremCanonicalLaneLean
end HautevilleHouse