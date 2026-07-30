import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionTheoremCanonicalLaneLean

structure HodgkinHuxleyState where
  V : Float
  m : Float
  h : Float
  n : Float

def sodiumCurrent (gNa : Float) (m h : Float) (V : Float) : Float :=
  gNa * m^3 * h * (V - 50.0)

def potassiumCurrent (gK : Float) (n : Float) (V : Float) : Float :=
  gK * n^4 * (V + 77.0)

structure LTDGate where
  calciumInflux : Float
  kinaseActivity : Float
  phosphataseActivity : Float

def ltdActivation (gate : LTDGate) : Prop :=
  gate.calciumInflux > 0.5 ∧ gate.phosphataseActivity > gate.kinaseActivity

theorem calcium_threshold_triggers_ltd (gate : LTDGate) :
    gate.calciumInflux > 0.5 → gate.phosphataseActivity > gate.kinaseActivity → ltdActivation gate := by
  intro hCa hPh
  unfold ltdActivation
  exact And.intro hCa hPh

end NeuroscienceLongTermDepressionTheoremCanonicalLaneLean
end HautevilleHouse