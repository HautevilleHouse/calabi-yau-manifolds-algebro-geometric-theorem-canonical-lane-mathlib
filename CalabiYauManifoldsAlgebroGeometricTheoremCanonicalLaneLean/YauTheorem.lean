import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalabiYauManifoldsAlgebroGeometricTheoremCanonicalLaneLean

structure CalabiConjecturePackage {M : ComplexManifoldPackage}
    {K : KahlerStructurePackage M} (P : KahlerMetricPackage K) where
  calabiConjectureStatement : Prop
  yauTheoremProof : Prop
  ricciFlatMetricConstructed : Prop

structure CalabiConjectureEvidence {M : ComplexManifoldPackage}
    {K : KahlerStructurePackage M} {P : KahlerMetricPackage K}
    (C : CalabiConjecturePackage P) where
  calabiConjectureStatementClosed : C.calabiConjectureStatement
  yauTheoremProofClosed : C.yauTheoremProof
  ricciFlatMetricConstructedClosed : C.ricciFlatMetricConstructed

def CalabiConjectureClosed {M : ComplexManifoldPackage}
    {K : KahlerStructurePackage M} {P : KahlerMetricPackage K}
    (C : CalabiConjecturePackage P) : Prop :=
  C.calabiConjectureStatement ∧ C.yauTheoremProof ∧ C.ricciFlatMetricConstructed

theorem calabi_conjecture_closed_from_evidence {M : ComplexManifoldPackage}
    {K : KahlerStructurePackage M} {P : KahlerMetricPackage K}
    (C : CalabiConjecturePackage P) (E : CalabiConjectureEvidence C) :
    CalabiConjectureClosed C := by
  exact And.intro E.calabiConjectureStatementClosed
    (And.intro E.yauTheoremProofClosed E.ricciFlatMetricConstructedClosed)

end CalabiYauManifoldsAlgebroGeometricTheoremCanonicalLaneLean
end HautevilleHouse