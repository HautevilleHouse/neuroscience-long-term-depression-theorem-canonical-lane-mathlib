import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionTheoremCanonicalLaneLean

structure MetaplasticityPackage where
  historyDependence : Prop
  slidingThreshold : Prop
  bcmTheory : Prop
  ltdPriming : Prop
  homeostaticRegulation : Prop

structure MetaplasticityEvidence (M : MetaplasticityPackage) where
  historyDependenceClosed : M.historyDependence
  slidingThresholdClosed : M.slidingThreshold
  bcmTheoryClosed : M.bcmTheory
  ltdPrimingClosed : M.ltdPriming
  homeostaticRegulationClosed : M.homeostaticRegulation

def MetaplasticityClosed (M : MetaplasticityPackage) : Prop :=
  M.historyDependence ∧ M.slidingThreshold ∧ M.bcmTheory ∧ M.ltdPriming ∧ M.homeostaticRegulation

theorem metaplasticity_closed_from_evidence (M : MetaplasticityPackage) (E : MetaplasticityEvidence M) : MetaplasticityClosed M := by
  exact And.intro E.historyDependenceClosed (And.intro E.slidingThresholdClosed (And.intro E.bcmTheoryClosed (And.intro E.ltdPrimingClosed E.homeostaticRegulationClosed)))

end NeuroscienceLongTermDepressionTheoremCanonicalLaneLean
end HautevilleHouse