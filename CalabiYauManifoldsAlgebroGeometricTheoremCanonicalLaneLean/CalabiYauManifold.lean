import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalabiYauManifoldsAlgebroGeometricTheoremCanonicalLaneLean

structure CalabiYauPackage {K : KahlerPackage} where
  ricciFlatMetric : Prop
  yauTheorem : KahlerPackage → Prop
  complexStructureCalabiYau : Prop
  holonomySu2 : Prop

structure CalabiYauEvidence {K : KahlerPackage} (C : CalabiYauPackage K) where
  ricciFlatMetricClosed : C.ricciFlatMetric
  yauTheoremClosed : C.yauTheorem K
  complexStructureCalabiYauClosed : C.complexStructureCalabiYau
  holonomySu2Closed : C.holonomySu2

def CalabiYauClosed {K : KahlerPackage} (C : CalabiYauPackage K) : Prop :=
  C.ricciFlatMetric ∧ C.yauTheorem K ∧ C.complexStructureCalabiYau ∧ C.holonomySu2

theorem calabi_yau_closed_from_evidence {K : KahlerPackage} (C : CalabiYauPackage K) (E : CalabiYauEvidence C) : CalabiYauClosed C :=
  And.intro E.ricciFlatMetricClosed
    (And.intro E.yauTheoremClosed
      (And.intro E.complexStructureCalabiYauClosed E.holonomySu2Closed))

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CalabiYauWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end CalabiYauManifoldsAlgebroGeometricTheoremCanonicalLaneLean
end HautevilleHouse
