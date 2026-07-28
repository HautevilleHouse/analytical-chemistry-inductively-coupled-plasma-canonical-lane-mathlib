import HautevilleHouse.AnalyticalChemistryInductivelyCoupledPlasmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnalyticalChemistryInductivelyCoupledPlasmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ScopedClosure A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact ⟨A.object.sourceKeyChecked,
    A.object.theoremObjectChecked,
    A.object.operatorModelWitness,
    A.object.spectralPersistenceBridgeWitness,
    A.object.sourceBoundaryLedgerWitness,
    A.object.classicalRemainderCarried⟩

end AnalyticalChemistryInductivelyCoupledPlasmaCanonicalLaneLean
end HautevilleHouse