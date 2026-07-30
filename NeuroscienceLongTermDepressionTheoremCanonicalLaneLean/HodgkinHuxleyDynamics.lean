import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionTheoremCanonicalLaneLean

structure HodgkinHuxleyDynamicsPackage where
  membranePotential : Type u
  ionChannelGating : Type v
  sodiumCurrent : Prop
  potassiumCurrent : Prop
  leakCurrent : Prop
  actionPotentialGeneration : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyDynamicsPackage) where
  sodiumCurrentClosed : H.sodiumCurrent
  potassiumCurrentClosed : H.potassiumCurrent
  leakCurrentClosed : H.leakCurrent
  actionPotentialGenerationClosed : H.actionPotentialGeneration

def HodgkinHuxleyDynamicsClosed (H : HodgkinHuxleyDynamicsPackage) : Prop :=
  H.sodiumCurrent ∧ H.potassiumCurrent ∧ H.leakCurrent ∧ H.actionPotentialGeneration

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyDynamicsPackage)
    (E : HodgkinHuxleyEvidence H) : HodgkinHuxleyDynamicsClosed H := by
  exact And.intro E.sodiumCurrentClosed
    (And.intro E.potassiumCurrentClosed
      (And.intro E.leakCurrentClosed E.actionPotentialGenerationClosed))

end NeuroscienceLongTermDepressionTheoremCanonicalLaneLean
end HautevilleHouse