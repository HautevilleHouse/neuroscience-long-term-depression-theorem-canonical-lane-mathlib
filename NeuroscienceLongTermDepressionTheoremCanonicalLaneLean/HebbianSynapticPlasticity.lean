import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionTheoremCanonicalLaneLean

structure HebbianSynapticPlasticityPackage where
  spikeTimingDependentPlasticity : Prop
  longTermDepressionInduction : Prop
  longTermPotentiationInduction : Prop
  calciumDynamicsCoupling : Prop
  bidirectionalSynapticModification : Prop

structure HebbianSynapticPlasticityEvidence (H : HebbianSynapticPlasticityPackage) where
  spikeTimingDependentPlasticityClosed : H.spikeTimingDependentPlasticity
  longTermDepressionInductionClosed : H.longTermDepressionInduction
  longTermPotentiationInductionClosed : H.longTermPotentiationInduction
  calciumDynamicsCouplingClosed : H.calciumDynamicsCoupling
  bidirectionalSynapticModificationClosed : H.bidirectionalSynapticModification

def HebbianSynapticPlasticityClosed (H : HebbianSynapticPlasticityPackage) : Prop :=
  H.spikeTimingDependentPlasticity ∧ H.longTermDepressionInduction ∧ H.longTermPotentiationInduction ∧
  H.calciumDynamicsCoupling ∧ H.bidirectionalSynapticModification

theorem hebbian_synaptic_plasticity_closed_from_evidence (H : HebbianSynapticPlasticityPackage) (E : HebbianSynapticPlasticityEvidence H) :
    HebbianSynapticPlasticityClosed H := by
  exact And.intro E.spikeTimingDependentPlasticityClosed
    (And.intro E.longTermDepressionInductionClosed
      (And.intro E.longTermPotentiationInductionClosed
        (And.intro E.calciumDynamicsCouplingClosed E.bidirectionalSynapticModificationClosed)))

end NeuroscienceLongTermDepressionTheoremCanonicalLaneLean
end HautevilleHouse