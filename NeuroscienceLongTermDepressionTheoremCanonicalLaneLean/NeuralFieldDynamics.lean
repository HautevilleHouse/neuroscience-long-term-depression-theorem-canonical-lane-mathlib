import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionTheoremCanonicalLaneLean

structure NeuralField where
  membranePotential : Float
  firingRate : Float
  adaptationVariable : Float

def evolveField (dt : Float) (field : NeuralField) : NeuralField :=
  { field with
    membranePotential := field.membranePotential + dt * (-field.membranePotential + field.firingRate)
  }

structure SynapticDynamics where
  ltdTimeConstant : Float
  depressionMechanismActive : Prop

def synapticDepression (dynamics : SynapticDynamics) (rate : Float) (dt : Float) : Float :=
  rate - dt * dynamics.ltdTimeConstant * rate

theorem depression_reduces_rate (dynamics : SynapticDynamics) (rate : Float) (dt : Float) :
    dynamics.ltdTimeConstant > 0 → dt > 0 → synapticDepression dynamics rate dt ≤ rate := by
  intro hConst hDt
  unfold synapticDepression
  nlinarith

end NeuroscienceLongTermDepressionTheoremCanonicalLaneLean
end HautevilleHouse