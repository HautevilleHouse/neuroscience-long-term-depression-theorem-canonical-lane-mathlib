import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionTheoremCanonicalLaneLean

structure ConnectomicsSubstratePackage where
  neuronGraph : Type u
  synapseWeight : Type v
  networkTopology : Prop
  connectivityMatrices : Prop
  smallWorldProperty : Prop
  modularStructure : Prop

structure ConnectomicsSubstrateEvidence (C : ConnectomicsSubstratePackage) where
  networkTopologyClosed : C.networkTopology
  connectivityMatricesClosed : C.connectivityMatrices
  smallWorldPropertyClosed : C.smallWorldProperty
  modularStructureClosed : C.modularStructure

def ConnectomicsSubstrateClosed (C : ConnectomicsSubstratePackage) : Prop :=
  C.networkTopology ∧ C.connectivityMatrices ∧ C.smallWorldProperty ∧ C.modularStructure

theorem connectomics_substrate_closed_from_evidence (C : ConnectomicsSubstratePackage)
    (E : ConnectomicsSubstrateEvidence C) : ConnectomicsSubstrateClosed C := by
  exact And.intro E.networkTopologyClosed
    (And.intro E.connectivityMatricesClosed
      (And.intro E.smallWorldPropertyClosed E.modularStructureClosed))

end NeuroscienceLongTermDepressionTheoremCanonicalLaneLean
end HautevilleHouse