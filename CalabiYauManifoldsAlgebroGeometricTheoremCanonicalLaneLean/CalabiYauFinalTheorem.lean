import CalabiYauManifoldsAlgebroGeometricTheoremCanonicalLaneLean.CalabiYauGateLemmas

namespace HautevilleHouse
namespace CalabiYauManifoldsAlgebroGeometricTheoremCanonicalLaneLean

def ConstrainedCalabiYauClosure (A : CalabiYauAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_calabi_yau_endgame (A : CalabiYauAdmissibleClass) :
    ConstrainedCalabiYauClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CalabiYauManifoldsAlgebroGeometricTheoremCanonicalLaneLean
end HautevilleHouse