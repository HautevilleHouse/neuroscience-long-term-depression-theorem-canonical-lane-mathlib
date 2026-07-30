import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionTheoremCanonicalLaneLean

structure LTDSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure LTDAdmittedObject where
  space : LTDSpace
  synapticWeights : Prop
  hebbianMechanism : Prop
  longTermDepression : Prop
  conclusion : longTermDepression

structure LTDState where
  object : LTDAdmittedObject

def LTDWitnessClosed (O : LTDAdmittedObject) : Prop :=
  O.longTermDepression

end NeuroscienceLongTermDepressionTheoremCanonicalLaneLean
end HautevilleHouse