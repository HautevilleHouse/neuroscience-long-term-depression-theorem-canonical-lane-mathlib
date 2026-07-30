import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionTheoremCanonicalLaneLean

structure Synapse where
  preNeuron : Type
  postNeuron : Type
  weight : Float
  activityHistory : List Float

def hebbianChange (pre post : Float) : Float := pre * post

structure LongTermDepressionRule where
  thresholdLTD : Float
  depressionRate : Float
  ruleApplied : Prop

def applyLTD (rules : LongTermDepressionRule) (w : Float) (pre post : Float) : Float :=
  w - rules.depressionRate * hebbianChange pre post

theorem depression_below_threshold (rules : LongTermDepressionRule) (pre post : Float) :
    hebbianChange pre post > rules.thresholdLTD →
    applyLTD rules 0.5 pre post < 0.5 := by
  intro h
  unfold applyLTD hebbianChange
  nlinarith

end NeuroscienceLongTermDepressionTheoremCanonicalLaneLean
end HautevilleHouse