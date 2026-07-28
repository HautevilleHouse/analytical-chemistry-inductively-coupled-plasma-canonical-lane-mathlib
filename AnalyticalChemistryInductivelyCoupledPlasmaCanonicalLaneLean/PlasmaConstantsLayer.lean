import canonicalLaneMathlib.AdmissibleClass

/-!
# Plasma Constants Layer

This module records fundamental plasma constants relevant to inductively coupled plasma
analytical chemistry: Debye length, plasma frequency, electron temperature, etc.
-/

namespace HautevilleHouse
namespace AnalyticalChemistryInductivelyCoupledPlasma

structure PlasmaParameters where
  debyeLength : ℝ
  plasmaFrequency : ℝ
  electronTemperature : ℝ
  ionDensity : ℝ
  electronDensity : ℝ
  magneticField : ℝ

defaultPlasmaParameters : PlasmaParameters := {
  debyeLength := 1.0e-5,  -- meters, typical ICP
  plasmaFrequency := 1.0e9, -- Hz
  electronTemperature := 1.0e4, -- K
  ionDensity := 1.0e15, -- m^-3
  electronDensity := 1.0e15, -- m^-3
  magneticField := 0.0 -- no external field
}

structure PlasmaDatum where
  parameters : PlasmaParameters
  debyeShieldingValid : Prop
  quasineutral : Prop

defaultPlasmaDatum : PlasmaDatum := {
  parameters := defaultPlasmaParameters,
  debyeShieldingValid := True,
  quasineutral := True
}

end AnalyticalChemistryInductivelyCoupledPlasma
end HautevilleHouse