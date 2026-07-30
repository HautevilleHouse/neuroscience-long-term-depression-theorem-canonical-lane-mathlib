import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionTheoremCanonicalLaneLean

structure LongTermDepressionInductionPackage where
  glutamatergicSynapse : Type u
  nmdaReceptorActivation : Prop
  calciumInflux : Prop
  phosphataseCascade : Prop
  ampaReceptorInternalization : Prop
  ltdExpression : Prop

structure LongTermDepressionInductionEvidence (L : LongTermDepressionInductionPackage) where
  nmdaReceptorActivationClosed : L.nmdaReceptorActivation
  calciumInfluxClosed : L.calciumInflux
  phosphataseCascadeClosed : L.phosphataseCascade
  ampaReceptorInternalizationClosed : L.ampaReceptorInternalization
  ltdExpressionClosed : L.ltdExpression

def LongTermDepressionInductionClosed (L : LongTermDepressionInductionPackage) : Prop :=
  L.nmdaReceptorActivation ∧ L.calciumInflux ∧ L.phosphataseCascade ∧ L.ampaReceptorInternalization ∧ L.ltdExpression

theorem long_term_depression_induction_closed_from_evidence (L : LongTermDepressionInductionPackage)
    (E : LongTermDepressionInductionEvidence L) : LongTermDepressionInductionClosed L := by
  exact And.intro E.nmdaReceptorActivationClosed
    (And.intro E.calciumInfluxClosed
      (And.intro E.phosphataseCascadeClosed
        (And.intro E.ampaReceptorInternalizationClosed E.ltdExpressionClosed)))

end NeuroscienceLongTermDepressionTheoremCanonicalLaneLean
end HautevilleHouse