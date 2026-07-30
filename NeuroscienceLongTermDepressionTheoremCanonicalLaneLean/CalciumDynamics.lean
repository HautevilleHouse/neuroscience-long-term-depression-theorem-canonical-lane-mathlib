import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionTheoremCanonicalLaneLean

structure CalciumDynamicsPackage where
  calciumInflux : Prop
  phosphataseActivation : Prop
  camkiiRegulation : Prop
  calcineurinActivity : Prop
  ampaReceptorInternalization : Prop

structure CalciumDynamicsEvidence (C : CalciumDynamicsPackage) where
  calciumInfluxClosed : C.calciumInflux
  phosphataseActivationClosed : C.phosphataseActivation
  camkiiRegulationClosed : C.camkiiRegulation
  calcineurinActivityClosed : C.calcineurinActivity
  ampaReceptorInternalizationClosed : C.ampaReceptorInternalization

def CalciumDynamicsClosed (C : CalciumDynamicsPackage) : Prop :=
  C.calciumInflux ∧ C.phosphataseActivation ∧ C.camkiiRegulation ∧ C.calcineurinActivity ∧ C.ampaReceptorInternalization

theorem calcium_dynamics_closed_from_evidence (C : CalciumDynamicsPackage) (E : CalciumDynamicsEvidence C) : CalciumDynamicsClosed C := by
  exact And.intro E.calciumInfluxClosed (And.intro E.phosphataseActivationClosed (And.intro E.camkiiRegulationClosed (And.intro E.calcineurinActivityClosed E.ampaReceptorInternalizationClosed)))

end NeuroscienceLongTermDepressionTheoremCanonicalLaneLean
end HautevilleHouse