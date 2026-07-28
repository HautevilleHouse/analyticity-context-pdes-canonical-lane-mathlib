import HautevilleHouse.AnalyticityContextPdesCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace AnalyticityContextPdesCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedTheoremObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NativeBridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end HautevilleHouse
end AnalyticityContextPdesCanonicalLaneLean