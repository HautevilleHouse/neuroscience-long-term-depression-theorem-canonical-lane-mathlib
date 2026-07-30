import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionTheoremCanonicalLaneLean

structure HebbianPlasticityPackage where
  presynapticActivity : Type u
  postsynapticActivity : Type v
  spikeTimingDependence : Prop
  ltpInduction : Prop
  ltdInduction : Prop
  hebbianRule : Prop

structure HebbianPlasticityEvidence (H : HebbianPlasticityPackage) where
  spikeTimingDependenceClosed : H.spikeTimingDependence
  ltpInductionClosed : H.ltpInduction
  ltdInductionClosed : H.ltdInduction
  hebbianRuleClosed : H.hebbianRule

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.spikeTimingDependence ∧ H.ltpInduction ∧ H.ltdInduction ∧ H.hebbianRule

theorem hebbian_plasticity_closed_from_evidence (H : HebbianPlasticityPackage)
    (E : HebbianPlasticityEvidence H) : HebbianPlasticityClosed H := by
  exact And.intro E.spikeTimingDependenceClosed
    (And.intro E.ltpInductionClosed
      (And.intro E.ltdInductionClosed E.hebbianRuleClosed))

end NeuroscienceLongTermDepressionTheoremCanonicalLaneLean
end HautevilleHouse