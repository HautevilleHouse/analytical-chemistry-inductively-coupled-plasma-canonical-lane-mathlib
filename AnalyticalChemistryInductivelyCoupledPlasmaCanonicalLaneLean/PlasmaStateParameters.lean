import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnalyticalChemistryInductivelyCoupledPlasmaCanonicalLaneLean

structure PlasmaStateCertificate where
  electronDensity : Float
  electronTemperature : Float
  argonFlowRate : Float
  rfPower : Float
  nebulizerGasFlow : Float
  sampleUptakeRate : Float
  measurementTime : Float
  calibrationCurveSlope : Float
  detectionLimit : Float
  precision : Float

defaultPlasmaState : PlasmaStateCertificate := {
  electronDensity := 1.0e15,
  electronTemperature := 8000.0,
  argonFlowRate := 15.0,
  rfPower := 1200.0,
  nebulizerGasFlow := 0.8,
  sampleUptakeRate := 1.0,
  measurementTime := 10.0,
  calibrationCurveSlope := 1000.0,
  detectionLimit := 0.001,
  precision := 0.01
}

def PlasmaStateClosed (C : PlasmaStateCertificate) : Prop :=
  C.electronDensity > 1.0e10 ∧
  C.electronTemperature > 5000.0 ∧
  C.argonFlowRate > 5.0 ∧
  C.rfPower > 500.0 ∧
  C.nebulizerGasFlow > 0.1 ∧
  C.sampleUptakeRate > 0.1 ∧
  C.measurementTime > 0.0 ∧
  C.calibrationCurveSlope > 0.0 ∧
  C.detectionLimit > 0.0 ∧
  C.precision > 0.0

theorem plasma_state_closed_checked :
    PlasmaStateClosed defaultPlasmaState := by
  exact And.intro (by norm_num) (And.intro (by norm_num) (And.intro (by norm_num) (And.intro (by norm_num) (And.intro (by norm_num) (And.intro (by norm_num) (And.intro (by norm_num) (And.intro (by norm_num) (And.intro (by norm_num) (by norm_num)))))))))

end AnalyticalChemistryInductivelyCoupledPlasmaCanonicalLaneLean
end HautevilleHouse