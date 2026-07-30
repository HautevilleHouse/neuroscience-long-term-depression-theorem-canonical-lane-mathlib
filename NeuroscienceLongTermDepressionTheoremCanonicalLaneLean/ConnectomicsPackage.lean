import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionTheoremCanonicalLaneLean

structure NeuronNode where
  id : Nat
  firingRate : Float
  plasticityWindow : Float

structure SynapticEdge where
  source : Nat
  target : Nat
  weight : Float
  depressionEligible : Prop

def synapticConnection (src tgt : NeuronNode) : Prop :=
  src.id ≠ tgt.id ∧ src.firingRate > 0

def depressionPropagation (network : List SynapticEdge) (threshold : Float) : Prop :=
  ∀ e ∈ network, e.weight < threshold → e.depressionEligible

theorem spike_timing_dependent_plasticity (pre post : Float) (dt : Float) :
    pre > 0 → post > 0 → (pre * dt > 0.1 → post * dt < 0.1) := by
  intro hPre hPost h
  have h' : post * dt < 0.1 := by
    nlinarith
  exact h'

end NeuroscienceLongTermDepressionTheoremCanonicalLaneLean
end HautevilleHouse