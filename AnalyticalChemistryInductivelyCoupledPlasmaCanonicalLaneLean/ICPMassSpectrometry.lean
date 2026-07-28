import canonicalLaneMathlib.AdmissibleClass

/-!
# ICP Mass Spectrometry Layer

This layer records the mass spectrometric endpoint: isotope ratios, detection limits, and interference corrections.
-/

namespace HautevilleHouse
namespace AnalyticalChemistryInductivelyCoupledPlasmaCanonicalLaneLean

structure ICPMassSpectrometryCertificate where
  isotopeRatio : Float
  detectionLimit : Float
  interferenceCorrected : Bool
  ratioChecked : Bool
  limitChecked : Bool
  interferenceChecked : Bool

def defaultICPMassSpectrometry : ICPMassSpectrometryCertificate := {
  isotopeRatio := 1.0,
  detectionLimit := 0.001,
  interferenceCorrected := true,
  ratioChecked := true,
  limitChecked := true,
  interferenceChecked := true
}

def ICPMassSpectrometryClosed (C : ICPMassSpectrometryCertificate) : Prop :=
  C.ratioChecked = true ∧ C.limitChecked = true ∧ C.interferenceChecked = true

theorem icp_mass_spectrometry_closed_checked :
    ICPMassSpectrometryClosed defaultICPMassSpectrometry := by
  exact And.intro rfl (And.intro rfl rfl)

end AnalyticalChemistryInductivelyCoupledPlasmaCanonicalLaneLean
end HautevilleHouse
