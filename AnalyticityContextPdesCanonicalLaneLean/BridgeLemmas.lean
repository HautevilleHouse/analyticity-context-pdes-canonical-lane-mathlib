import HautevilleHouse.AnalyticityContextPdesCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.AnalyticityContextPdesCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace AnalyticityContextPdesCanonicalLaneLean

def NativeBridgeClosed (O : AdmittedTheoremObject) : Prop :=
  O.object.sourceKey = sourceRepository ∧
  O.object.theoremObject = sourceDescription ∧
  O.analyticModelChecked ∧
  O.analyticPersistenceBridgeChecked ∧
  O.sourceBoundaryLedgerChecked ∧
  (formalizationCertificate.sourceConjectureClosureClaimed = false)

def ScopedClosure (O : AdmittedTheoremObject) : Prop :=
  NativeBridgeClosed O

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ScopedClosure A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact ⟨A.object.object.sourceKey, A.object.object.theoremObject, A.object.analyticModelChecked, A.object.analyticPersistenceBridgeChecked, A.object.sourceBoundaryLedgerChecked, A.object.classicalRemainderCarried⟩

end HautevilleHouse
end AnalyticityContextPdesCanonicalLaneLean