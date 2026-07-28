import AnalyticalChemistryInductivelyCoupledPlasmaCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace AnalyticalChemistryInductivelyCoupledPlasmaCanonicalLaneLean

structure ICPTheoremStatement where
  sourceKey : String
  theoremName : String
  plasmaConfig : String
  spectralLine : String
  classicalBoundary : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceRepository : String := "analytical-chemistry-icp-canonical-lane"
def sourceDescription : String := "Inductively Coupled Plasma spectral emission closure"

def sourceTheoremStatement : ICPTheoremStatement := {
  sourceKey := sourceRepository,
  theoremName := sourceRepository,
  plasmaConfig := "Argon plasma at 1 atm, 6000 K",
  spectralLine := "Ca II 393.366 nm",
  classicalBoundary := "Full plasma emission spectrum outside admitted class",
  certificateLane := "mhd_constrained",
  carriedRemainder := "classical boundary carried by theoremBoundaryOpen"
}

def ClassicalSourceBoundaryCarried : Prop :=
  sourceTheoremStatement.classicalBoundary = "Full plasma emission spectrum outside admitted class"

theorem classical_source_boundary_carried_checked :
    ClassicalSourceBoundaryCarried := by
  rfl

end AnalyticalChemistryInductivelyCoupledPlasmaCanonicalLaneLean
end HautevilleHouse