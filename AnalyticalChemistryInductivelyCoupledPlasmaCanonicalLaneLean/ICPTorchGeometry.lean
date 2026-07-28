import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnalyticalChemistryInductivelyCoupledPlasmaCanonicalLaneLean

structure ICPTorchGeometryCertificate where
  outerTubeInnerDiameter : Float
  outerTubeOuterDiameter : Float
  intermediateTubeInnerDiameter : Float
  intermediateTubeOuterDiameter : Float
  innerTubeInnerDiameter : Float
  innerTubeOuterDiameter : Float
  coilTurns : Nat
  coilHeight : Float
  torchLength : Float

defaultTorchGeometry : ICPTorchGeometryCertificate := {
  outerTubeInnerDiameter := 20.0,
  outerTubeOuterDiameter := 22.0,
  intermediateTubeInnerDiameter := 16.0,
  intermediateTubeOuterDiameter := 18.0,
  innerTubeInnerDiameter := 1.5,
  innerTubeOuterDiameter := 2.0,
  coilTurns := 3,
  coilHeight := 20.0,
  torchLength := 100.0
}

def ICPTorchGeometryClosed (C : ICPTorchGeometryCertificate) : Prop :=
  C.outerTubeInnerDiameter > 0.0 ∧
  C.outerTubeOuterDiameter > C.outerTubeInnerDiameter ∧
  C.intermediateTubeInnerDiameter > 0.0 ∧
  C.intermediateTubeOuterDiameter > C.intermediateTubeInnerDiameter ∧
  C.innerTubeInnerDiameter > 0.0 ∧
  C.innerTubeOuterDiameter > C.innerTubeInnerDiameter ∧
  C.coilTurns > 0 ∧
  C.coilHeight > 0.0 ∧
  C.torchLength > 0.0 ∧
  C.torchLength > C.coilHeight

theorem icp_torch_geometry_closed_checked :
    ICPTorchGeometryClosed defaultTorchGeometry := by
  exact And.intro (by norm_num) (And.intro (by norm_num) (And.intro (by norm_num) (And.intro (by norm_num) (And.intro (by norm_num) (And.intro (by norm_num) (And.intro (by norm_num) (And.intro (by norm_num) (And.intro (by norm_num) (And.intro (by norm_num) (by norm_num))))))))))

end AnalyticalChemistryInductivelyCoupledPlasmaCanonicalLaneLean
end HautevilleHouse