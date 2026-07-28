import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnalyticalChemistryInductivelyCoupledPlasmaCanonicalLaneLean

structure InterferenceCertificate where
  analyteWavelength: Float
  interferenceWavelength: Float
  analyteConcentration: Float
  interferenceConcentration: Float
  backgroundEquivalentConcentration: Float
  correctionFactor: Float

defaultInterference : InterferenceCertificate := {
  analyteWavelength := 393.3,
  interferenceWavelength := 396.1,
  analyteConcentration := 1.0,
  interferenceConcentration := 100.0,
  backgroundEquivalentConcentration := 0.01,
  correctionFactor := 0.001
}

def SpectralInterferenceClosed (C : InterferenceCertificate) : Prop :=
  C.analyteWavelength > 0.0 ∧
  C.interferenceWavelength > 0.0 ∧
  C.analyteConcentration >= 0.0 ∧
  C.interferenceConcentration >= 0.0 ∧
  C.backgroundEquivalentConcentration >= 0.0 ∧
  C.correctionFactor >= 0.0 ∧
  C.analyteWavelength ≠ C.interferenceWavelength

theorem spectral_interference_closed_checked :
    SpectralInterferenceClosed defaultInterference := by
  exact And.intro (by norm_num) (And.intro (by norm_num) (And.intro (by norm_num) (And.intro (by norm_num) (And.intro (by norm_num) (And.intro (by norm_num) (And.intro (by norm_num) (by norm_num)))))))

end AnalyticalChemistryInductivelyCoupledPlasmaCanonicalLaneLean
end HautevilleHouse