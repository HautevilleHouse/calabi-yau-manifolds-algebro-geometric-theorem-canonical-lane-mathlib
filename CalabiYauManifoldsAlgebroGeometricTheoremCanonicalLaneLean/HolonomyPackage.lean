import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalabiYauManifoldsAlgebroGeometricTheoremCanonicalLaneLean

structure HolonomyPackage where
  manifold : Type u
  metric : Type v
  holonomyGroup : Type w
  irreducible : Prop
  specialHolonomy : Prop
  su_n : Prop
  ricciFlatImplied : Prop

structure HolonomyEvidence (H : HolonomyPackage) where
  irreducibleClosed : H.irreducible
  specialHolonomyClosed : H.specialHolonomy
  su_nClosed : H.su_n
  ricciFlatImpliedClosed : H.ricciFlatImplied

def HolonomyClosed (H : HolonomyPackage) : Prop :=
  H.irreducible ∧ H.specialHolonomy ∧ H.su_n ∧ H.ricciFlatImplied

theorem holonomy_closed_from_evidence (H : HolonomyPackage) (E : HolonomyEvidence H) : HolonomyClosed H :=
by
  exact And.intro E.irreducibleClosed (And.intro E.specialHolonomyClosed (And.intro E.su_nClosed E.ricciFlatImpliedClosed))

end CalabiYauManifoldsAlgebroGeometricTheoremCanonicalLaneLean
end HautevilleHouse