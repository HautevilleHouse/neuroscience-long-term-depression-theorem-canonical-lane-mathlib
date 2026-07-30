import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionTheoremCanonicalLaneLean

structure STDPPackage where
  spikeTiming : Prop
  ltpInduction : Prop
  ltdInduction : Prop
  weightDynamics : Prop
  depressionDominance : Prop

structure STDPEvidence (S : STDPPackage) where
  spikeTimingClosed : S.spikeTiming
  ltpInductionClosed : S.ltpInduction
  ltdInductionClosed : S.ltdInduction
  weightDynamicsClosed : S.weightDynamics
  depressionDominanceClosed : S.depressionDominance

def STDPClosed (S : STDPPackage) : Prop :=
  S.spikeTiming ∧ S.ltpInduction ∧ S.ltdInduction ∧ S.weightDynamics ∧ S.depressionDominance

theorem stdp_closed_from_evidence (S : STDPPackage) (E : STDPEvidence S) : STDPClosed S := by
  exact And.intro E.spikeTimingClosed (And.intro E.ltpInductionClosed (And.intro E.ltdInductionClosed (And.intro E.weightDynamicsClosed E.depressionDominanceClosed)))

end NeuroscienceLongTermDepressionTheoremCanonicalLaneLean
end HautevilleHouse