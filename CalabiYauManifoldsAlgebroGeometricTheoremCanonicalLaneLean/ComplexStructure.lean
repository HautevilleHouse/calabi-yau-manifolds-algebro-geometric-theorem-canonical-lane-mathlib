import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalabiYauManifoldsAlgebroGeometricTheoremCanonicalLaneLean

structure AlmostComplexStructure (M : Type u) where
  J : ∀ x : M, End (TangentSpace x)
  squaredNegOne : ∀ x : M, J x ∘ J x = -Id

structure IntegrabilityCondition (M : Type u) [Manifold M] (J : AlmostComplexStructure M) where
  torsionFree : Prop
  newlanderNirenberg : Prop

structure ComplexStructure (M : Type u) [Manifold M] where
  almostComplex : AlmostComplexStructure M
  integrable : IntegrabilityCondition M almostComplex
  dimension : ℕ
  holomorphicCharts : Prop

structure HolomorphicVectorBundle (M : Type u) [ComplexStructure M] where
  fiber : M → Type v
  transitionFunctions : Prop
  chernClasses : ℕ → Prop

end CalabiYauManifoldsAlgebroGeometricTheoremCanonicalLaneLean
end HautevilleHouse