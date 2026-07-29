import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalabiYauManifoldsAlgebroGeometricTheoremCanonicalLaneLean

structure HodgeDecompositionPackage (C : CalabiYauPackage) where
  hodgeNumbers : Type u
  hodgeDiamond : Prop
  hodgeDecompositionHolds : Prop
  hodgeSymmetry : Prop
  hodgeDuality : Prop

structure HodgeDecompositionEvidence {C : CalabiYauPackage} (H : HodgeDecompositionPackage C) where
  hodgeDecompositionHoldsClosed : H.hodgeDecompositionHolds
  hodgeSymmetryClosed : H.hodgeSymmetry
  hodgeDualityClosed : H.hodgeDuality

def HodgeDecompositionClosed {C : CalabiYauPackage} (H : HodgeDecompositionPackage C) : Prop :=
  H.hodgeDecompositionHolds ∧ H.hodgeSymmetry ∧ H.hodgeDuality

theorem hodge_decomposition_closed_from_evidence
    {C : CalabiYauPackage} (H : HodgeDecompositionPackage C)
    (E : HodgeDecompositionEvidence H) : HodgeDecompositionClosed H := by
  exact And.intro E.hodgeDecompositionHoldsClosed
    (And.intro E.hodgeSymmetryClosed E.hodgeDualityClosed)

end CalabiYauManifoldsAlgebroGeometricTheoremCanonicalLaneLean
end HautevilleHouse