import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnalyticalChemistryInductivelyCoupledPlasmaCanonicalLaneLean

structure CalibrationCertificate where
  standardConcentrations : List Float
  signalIntensities : List Float
  blankSignal : Float
  calibrationSlope : Float
  calibrationIntercept : Float
  correlationCoefficient : Float
  measurementUncertainty : Float

defaultCalibration : CalibrationCertificate := {
  standardConcentrations := [0.0, 0.5, 1.0, 2.0, 5.0, 10.0],
  signalIntensities := [10.0, 510.0, 1010.0, 2010.0, 5010.0, 10010.0],
  blankSignal := 10.0,
  calibrationSlope := 1000.0,
  calibrationIntercept := 10.0,
  correlationCoefficient := 0.9999,
  measurementUncertainty := 0.05
}

def CalibrationBridgeClosed (C : CalibrationCertificate) : Prop :=
  C.standardConcentrations.length = C.signalIntensities.length ∧
  C.standardConcentrations.length ≥ 3 ∧
  C.blankSignal > 0.0 ∧
  C.calibrationSlope > 0.0 ∧
  C.correlationCoefficient > 0.99 ∧
  C.correlationCoefficient ≤ 1.0 ∧
  C.measurementUncertainty ≥ 0.0

theorem calibration_bridge_closed_checked :
    CalibrationBridgeClosed defaultCalibration := by
  unfold CalibrationBridgeClosed
  refine And.intro ?_ (And.intro ?_ (And.intro ?_ (And.intro ?_ (And.intro ?_ (And.intro ?_ ?_)))))
  · rfl
  · norm_num
  · norm_num
  · norm_num
  · norm_num
  · norm_num
  · norm_num

end AnalyticalChemistryInductivelyCoupledPlasmaCanonicalLaneLean
end HautevilleHouse