import canonicalLaneMathlib.AdmissibleClass
import AnalyticalChemistryInductivelyCoupledPlasma.PlasmaBridgeLemmas

/-!
# Final Theorem: ICP Analytical Chemistry Closure

This module defines the constrained closure for the inductively coupled plasma domain.
-/

namespace HautevilleHouse
namespace AnalyticalChemistryInductivelyCoupledPlasma

def ConstrainedPlasmaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_plasma_endgame (A : AdmissibleClass) : ConstrainedPlasmaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AnalyticalChemistryInductivelyCoupledPlasma
end HautevilleHouse