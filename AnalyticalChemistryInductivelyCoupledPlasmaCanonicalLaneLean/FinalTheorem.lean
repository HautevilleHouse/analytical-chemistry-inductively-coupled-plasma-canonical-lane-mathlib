import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AnalyticalChemistryInductivelyCoupledPlasmaCanonicalLaneLean.PlasmaStateParameters
import HautevilleHouse.AnalyticalChemistryInductivelyCoupledPlasmaCanonicalLaneLean.ICPTorchGeometry
import HautevilleHouse.AnalyticalChemistryInductivelyCoupledPlasmaCanonicalLaneLean.SpectralInterferenceModel
import HautevilleHouse.AnalyticalChemistryInductivelyCoupledPlasmaCanonicalLaneLean.AnalyticalFiguresOfMerit
import HautevilleHouse.AnalyticalChemistryInductivelyCoupledPlasmaCanonicalLaneLean.CalibrationBridge

namespace HautevilleHouse
namespace AnalyticalChemistryInductivelyCoupledPlasmaCanonicalLaneLean

structure AnalyticalChemistryICPCertificate where
  plasmaState : PlasmaStateCertificate
  torchGeometry : ICPTorchGeometryCertificate
  interference : InterferenceCertificate
  figuresOfMerit : FiguresOfMeritCertificate
  calibration : CalibrationCertificate

defaultCertificate : AnalyticalChemistryICPCertificate := {
  plasmaState := defaultPlasmaState,
  torchGeometry := defaultTorchGeometry,
  interference := defaultInterference,
  figuresOfMerit := defaultFiguresOfMerit,
  calibration := defaultCalibration
}

def AnalyticalChemistryICPClosure (C : AnalyticalChemistryICPCertificate) : Prop :=
  PlasmaStateClosed C.plasmaState ∧
  ICPTorchGeometryClosed C.torchGeometry ∧
  SpectralInterferenceClosed C.interference ∧
  FiguresOfMeritClosed C.figuresOfMerit ∧
  CalibrationBridgeClosed C.calibration

theorem analytical_chemistry_icp_closure_checked :
    AnalyticalChemistryICPClosure defaultCertificate := by
  unfold AnalyticalChemistryICPClosure
  refine And.intro plasma_state_closed_checked
    (And.intro icp_torch_geometry_closed_checked
    (And.intro spectral_interference_closed_checked
    (And.intro figures_of_merit_closed_checked
    (And.intro calibration_bridge_closed_checked ?_))))
  exact True.intro

def ConstrainedAnalyticalChemistryICPClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_analytical_chemistry_icp_endgame (A : AdmissibleClass) :
    ConstrainedAnalyticalChemistryICPClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AnalyticalChemistryInductivelyCoupledPlasmaCanonicalLaneLean
end HautevilleHouse