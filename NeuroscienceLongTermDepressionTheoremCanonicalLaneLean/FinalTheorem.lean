import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceLongTermDepressionTheoremCanonicalLaneLean.STDPMecanisms
import HautevilleHouse.NeuroscienceLongTermDepressionTheoremCanonicalLaneLean.CalciumSignaling
import HautevilleHouse.NeuroscienceLongTermDepressionTheoremCanonicalLaneLean.HeterosynapticLTD

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AdmittedClosure A

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

def ConstrainedLTDClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem LTD_endgame (A : AdmissibleClass) : ConstrainedLTDClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceLongTermDepressionTheoremCanonicalLaneLean
end HautevilleHouse
