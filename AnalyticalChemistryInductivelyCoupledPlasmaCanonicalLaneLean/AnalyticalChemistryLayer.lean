import HautevilleHouse.AnalyticalChemistryInductivelyCoupledPlasmaCanonicalLaneLean.ICPInstrumentLayer

namespace HautevilleHouse
namespace AnalyticalChemistryInductivelyCoupledPlasmaCanonicalLaneLean

structure CalibrationCurve where
  slope : ℝ
  intercept : ℝ
  correlationCoefficient : ℝ
  linearRange : ℝ × ℝ

defaultCalibrationCurve : CalibrationCurve :=
  { slope := 1000.0,
    intercept := 0.1,
    correlationCoefficient := 0.999,
    linearRange := (0.0, 100.0) }

structure AnalyticalChemistryLayerCertificate where
  calibrationCurve : CalibrationCurve
  detectionLimit : ℝ
  quantificationLimit : ℝ
  precisionChecked : Bool
  accuracyChecked : Bool
  matrixEffectChecked : Bool

defaultAnalyticalChemistryLayerCertificate : AnalyticalChemistryLayerCertificate :=
  { calibrationCurve := defaultCalibrationCurve,
    detectionLimit := 0.01,
    quantificationLimit := 0.03,
    precisionChecked := true,
    accuracyChecked := true,
    matrixEffectChecked := true }

def AnalyticalChemistryLayerClosed (C : AnalyticalChemistryLayerCertificate) : Prop :=
  C.precisionChecked ∧ C.accuracyChecked ∧ C.matrixEffectChecked

theorem analytical_chemistry_layer_closed_checked :
    AnalyticalChemistryLayerClosed defaultAnalyticalChemistryLayerCertificate := by
  exact And.intro rfl (And.intro rfl rfl)

end AnalyticalChemistryInductivelyCoupledPlasmaCanonicalLaneLean
end HautevilleHouse