import canonicalLaneMathlib.AdmissibleClass
import CalabiYauManifoldsAlgebroGeometricTheoremCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace CalabiYauManifoldsAlgebroGeometricTheoremCanonicalLaneLean

structure CalabiYauProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def calabiYauProofObligation : CalabiYauProofObligation := {
  sourceKey := "calabi-yau-canonical-lane",
  theoremObject := "Calabi-Yau theorem: existence of Ricci-flat Kähler metrics",
  commonCoreImported := true,
  theoremSpecificDefinitionsNative := true,
  theoremSpecificBridgeNative := true,
  theoremSpecificAdmittedClosureNative := true,
  unrestrictedClassicalClosureNative := false,
  carriedGap := "theorem-specific Mathlib endgame pilot closes over the admitted class; unrestricted classical closure remains carried"
}

theorem theorem_specific_endgame_pilot_checked :
  (∀ A : AdmissibleClass, ConstrainedCalabiYauClosure A) :=
by
  intro A
  exact constrained_calabi_yau_endgame A

end CalabiYauManifoldsAlgebroGeometricTheoremCanonicalLaneLean
end HautevilleHouse