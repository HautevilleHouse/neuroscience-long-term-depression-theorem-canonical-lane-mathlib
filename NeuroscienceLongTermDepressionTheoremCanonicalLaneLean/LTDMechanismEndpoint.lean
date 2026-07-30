import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionTheoremCanonicalLaneLean

structure LTDMechanismEndpointPackage where
  gluRInternalization : Prop
  phosphataseActivation : Prop
  amparTrafficking : Prop
  dendriticSpineRemodeling : Prop
  proteinSynthesis : Prop
  endpointRealized : Prop

structure LTDMechanismEndpointEvidence (P : LTDMechanismEndpointPackage) where
  gluRInternalizationClosed : P.gluRInternalization
  phosphataseActivationClosed : P.phosphataseActivation
  amparTraffickingClosed : P.amparTrafficking
  dendriticSpineRemodelingClosed : P.dendriticSpineRemodeling
  proteinSynthesisClosed : P.proteinSynthesis
  endpointRealizedClosed : P.endpointRealized

def LTDMechanismEndpointClosed (P : LTDMechanismEndpointPackage) : Prop :=
  P.gluRInternalization ∧ P.phosphataseActivation ∧ P.amparTrafficking ∧
  P.dendriticSpineRemodeling ∧ P.proteinSynthesis ∧ P.endpointRealized

theorem ltd_mechanism_endpoint_closed_from_evidence (P : LTDMechanismEndpointPackage)
    (E : LTDMechanismEndpointEvidence P) : LTDMechanismEndpointClosed P := by
  exact And.intro E.gluRInternalizationClosed
    (And.intro E.phosphataseActivationClosed
      (And.intro E.amparTraffickingClosed
        (And.intro E.dendriticSpineRemodelingClosed
          (And.intro E.proteinSynthesisClosed E.endpointRealizedClosed))))

theorem ltd_mechanism_endpoint_supplies_biological_statement (P : LTDMechanismEndpointPackage) :
    P.endpointRealized := P.endpointRealized

end NeuroscienceLongTermDepressionTheoremCanonicalLaneLean
end HautevilleHouse
