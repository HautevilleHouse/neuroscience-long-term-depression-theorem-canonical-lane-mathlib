import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionTheoremCanonicalLaneLean

/-!
# Heterosynaptic LTD Package

This module formalizes heterosynaptic LTD, where synaptic depression spreads
to neighboring synapses. It defines spatial spread, neighbor coupling, and
global depression fields.
-/

structure SpatialCoupling where
  distanceDecay : ℝ → ℝ
  couplingStrength : ℝ
  spreadRadius : ℝ
  couplingClosed : couplingStrength > 0 ∧ spreadRadius > 0

def SpatialCouplingClosed (s : SpatialCoupling) : Prop :=
  s.couplingClosed

structure HeterosynapticDepressionField where
  depressionField : ℝ × ℝ → ℝ
  fieldSources : List ℝ
  fieldClosed : ∀ (p : ℝ × ℝ), depressionField p ≥ 0

def HeterosynapticDepressionFieldClosed (h : HeterosynapticDepressionField) : Prop :=
  h.fieldClosed

end NeuroscienceLongTermDepressionTheoremCanonicalLaneLean
end HautevilleHouse
