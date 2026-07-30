import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionTheoremCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membranePotential : Prop
  sodiumChannel : Prop
  potassiumChannel : Prop
  leakChannel : Prop
  actionPotentialExists : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  membranePotentialClosed : H.membranePotential
  sodiumChannelClosed : H.sodiumChannel
  potassiumChannelClosed : H.potassiumChannel
  leakChannelClosed : H.leakChannel
  actionPotentialExistsClosed : H.actionPotentialExists

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.membranePotential ∧ H.sodiumChannel ∧ H.potassiumChannel ∧ H.leakChannel ∧ H.actionPotentialExists

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage) (E : HodgkinHuxleyEvidence H) : HodgkinHuxleyClosed H := by
  exact And.intro E.membranePotentialClosed (And.intro E.sodiumChannelClosed (And.intro E.potassiumChannelClosed (And.intro E.leakChannelClosed E.actionPotentialExistsClosed)))

end NeuroscienceLongTermDepressionTheoremCanonicalLaneLean
end HautevilleHouse