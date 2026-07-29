import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalabiYauManifoldsAlgebroGeometricTheoremCanonicalLaneLean

structure KahlerRicciFlowPackage (C : CalabiYauPackage) where
  ricciFlowEquation : Prop
  kahlerStructurePreserved : Prop
  longTimeExistence : Prop
  convergenceToRicciFlat : Prop
  singularityFormation : Prop

structure KahlerRicciFlowEvidence {C : CalabiYauPackage} (K : KahlerRicciFlowPackage C) where
  ricciFlowEquationClosed : K.ricciFlowEquation
  kahlerStructurePreservedClosed : K.kahlerStructurePreserved
  longTimeExistenceClosed : K.longTimeExistence
  convergenceToRicciFlatClosed : K.convergenceToRicciFlat

def KahlerRicciFlowClosed {C : CalabiYauPackage} (K : KahlerRicciFlowPackage C) : Prop :=
  K.ricciFlowEquation ∧ K.kahlerStructurePreserved ∧ K.longTimeExistence ∧ K.convergenceToRicciFlat

theorem kahler_ricci_flow_closed_from_evidence
    {C : CalabiYauPackage} (K : KahlerRicciFlowPackage C)
    (E : KahlerRicciFlowEvidence K) : KahlerRicciFlowClosed K := by
  exact And.intro E.ricciFlowEquationClosed
    (And.intro E.kahlerStructurePreservedClosed
      (And.intro E.longTimeExistenceClosed E.convergenceToRicciFlatClosed))

end CalabiYauManifoldsAlgebroGeometricTheoremCanonicalLaneLean
end HautevilleHouse