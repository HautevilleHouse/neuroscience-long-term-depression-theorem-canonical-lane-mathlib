import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionTheoremCanonicalLaneLean

structure NeuralFieldTheoryPackage where
  populationActivity : Type u
  connectivityKernel : Type v
  firingRateFunction : Type w
  fieldEquation : Prop
  patternFormation : Prop
  bistability : Prop

structure NeuralFieldTheoryEvidence (N : NeuralFieldTheoryPackage) where
  fieldEquationClosed : N.fieldEquation
  patternFormationClosed : N.patternFormation
  bistabilityClosed : N.bistability

def NeuralFieldTheoryClosed (N : NeuralFieldTheoryPackage) : Prop :=
  N.fieldEquation ∧ N.patternFormation ∧ N.bistability

theorem neural_field_theory_closed_from_evidence (N : NeuralFieldTheoryPackage)
    (E : NeuralFieldTheoryEvidence N) : NeuralFieldTheoryClosed N := by
  exact And.intro E.fieldEquationClosed
    (And.intro E.patternFormationClosed E.bistabilityClosed)

end NeuroscienceLongTermDepressionTheoremCanonicalLaneLean
end HautevilleHouse