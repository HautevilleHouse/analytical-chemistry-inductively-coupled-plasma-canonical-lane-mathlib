import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnalyticalChemistryInductivelyCoupledPlasmaCanonicalLaneLean

structure FiguresOfMeritCertificate where
  detectionLimit : Float
  quantitationLimit : Float
  sensitivity : Float
  linearityRange : Float
  correlationCoefficient : Float
  repeatability : Float
  replicateCount : Nat

defaultFiguresOfMerit : FiguresOfMeritCertificate := {
  detectionLimit := 0.001,
  quantitationLimit := 0.003,
  sensitivity := 1000.0,
  linearityRange := 1.0e6,
  correlationCoefficient := 0.9999,
  repeatability := 0.01,
  replicateCount := 3
}

def FiguresOfMeritClosed (C : FiguresOfMeritCertificate) : Prop :=
  C.detectionLimit > 0.0 ∧
  C.quantitationLimit > C.detectionLimit ∧
  C.sensitivity > 0.0 ∧
  C.linearityRange > C.quantitationLimit ∧
  C.correlationCoefficient > 0.99 ∧
  C.correlationCoefficient ≤ 1.0 ∧
  C.repeatability ≥ 0.0 ∧
  C.replicateCount ≥ 3

theorem figures_of_merit_closed_checked :
    FiguresOfMeritClosed defaultFiguresOfMerit := by
  exact And.intro (by norm_num) (And.intro (by norm_num) (And.intro (by norm_num) (And.intro (by norm_num) (And.intro (by norm_num) (And.intro (by norm_num) (And.intro (by norm_num) (And.intro (by norm_num) (by norm_num))))))))

end AnalyticalChemistryInductivelyCoupledPlasmaCanonicalLaneLean
end HautevilleHouse