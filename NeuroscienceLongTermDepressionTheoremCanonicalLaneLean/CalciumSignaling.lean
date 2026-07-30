import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionTheoremCanonicalLaneLean

/-!
# Calcium Signaling Package

This module captures calcium-dependent signaling cascades that trigger LTD.
It defines calcium influx, kinase/phosphatase activation, and AMPA receptor
trafficking as admissible-class components.
-/

structure CalciumDynamics where
  calciumInflux : ℝ
  basalCalcium : ℝ
  peakCalcium : ℝ
  calmodulinActivation : ℝ → ℝ
  calcineurinActivity : ℝ → ℝ
  signalClosed : calciumInflux > basalCalcium ∧ peakCalcium > calciumInflux

def CalciumDynamicsClosed (c : CalciumDynamics) : Prop :=
  c.signalClosed

structure AMPARTrafficking where
  surfaceAMPAR : ℕ → ℝ
  internalizationRate : ℝ
  recyclingRate : ℝ
  netLTD : ℝ → ℝ
  traffickingClosed : (internalizationRate > 0) ∧ (recyclingRate ≥ 0)

d

def AMPARTraffickingClosed (a : AMPARTrafficking) : Prop :=
  a.traffickingClosed

end NeuroscienceLongTermDepressionTheoremCanonicalLaneLean
end HautevilleHouse
