import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalabiYauManifoldsAlgebroGeometricTheoremCanonicalLaneLean

structure KahlerPackage where
  symplecticForm : Type u
  closedness : Prop
  compatibilityWithComplexStructure : Prop
  positivity : Prop
  kahlerMetric : Type v
  ricciForm : Type w
  ricciFormClosed : Prop
  ricciFormExact : Prop

structure KahlerEvidence (K : KahlerPackage) where
  closednessClosed : K.closedness
  compatibilityClosed : K.compatibilityWithComplexStructure
  positivityClosed : K.positivity
  ricciFormClosedClosed : K.ricciFormClosed
  ricciFormExactClosed : K.ricciFormExact

def KahlerClosed (K : KahlerPackage) : Prop :=
  K.closedness ∧ K.compatibilityWithComplexStructure ∧ K.positivity ∧ K.ricciFormClosed ∧ K.ricciFormExact

theorem kahler_closed_from_evidence (K : KahlerPackage) (E : KahlerEvidence K) : KahlerClosed K :=
by
  exact And.intro E.closednessClosed (And.intro E.compatibilityClosed (And.intro E.positivityClosed (And.intro E.ricciFormClosedClosed E.ricciFormExactClosed)))

end CalabiYauManifoldsAlgebroGeometricTheoremCanonicalLaneLean
end HautevilleHouse