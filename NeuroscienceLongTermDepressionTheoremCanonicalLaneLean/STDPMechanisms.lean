import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionTheoremCanonicalLaneLean

/-!
# STDP Mechanisms Package

This module formalizes spike-timing-dependent plasticity (STDP) mechanisms
underlying long-term depression (LTD). It defines causality windows, pairing
protocols, and synaptic weight update rules as admissible objects.
-/

structure STDPWindow where
  prePostInterval : ℝ
  depressionWindow : ℝ × ℝ
  weightUpdateSign : ℤ
  windowClosed : depressionWindow.1 ≤ prePostInterval ∧ prePostInterval ≤ depressionWindow.2

def STDPWindowClosed (w : STDPWindow) : Prop :=
  w.windowClosed

def causalWindowPair (w₁ w₂ : STDPWindow) : Prop :=
  STDPWindowClosed w₁ ∧ STDPWindowClosed w₂

structure STDPProtocol where
  pairingFrequency : ℝ
  stimulationDuration : ℝ
  inductionProtocol : Prop
  inductionProtocolClosed : inductionProtocol

def STDPProtocolClosed (p : STDPProtocol) : Prop :=
  p.inductionProtocolClosed

end NeuroscienceLongTermDepressionTheoremCanonicalLaneLean
end HautevilleHouse