import Mathlib.Analysis.Complex.Basic
import Mathlib.Data.Set.Basic

namespace HautevilleHouse
namespace AnalyticityContextPdesCanonicalLaneLean

structure PDESystem where
  operator : String
  domain : String
  analyticityType : String
deriving Repr, DecidableEq

structure TheoremSpecificObject where
  sourceKey : String
  theoremObject : String
  claimBoundary : String
deriving Repr, DecidableEq

structure UpstreamMathlibSubstrate where
  operatorCarrier : Type
  analyticSet : Set Complex
  invariantOrAnalyticGate : Prop
  analyticPersistenceBridge : Prop
  sourceBoundaryLedger : Set String

def sourceRepository : String := "analyticity-context-pdes-canonical-lane"
def sourceDescription : String := "Analyticity Context PDEs"

structure FormalizationCertificate where
  sourceConjectureClosureClaimed : Bool
  theoremBoundaryOpen : Bool

def formalizationCertificate : FormalizationCertificate := {
  sourceConjectureClosureClaimed := false,
  theoremBoundaryOpen := true
}

structure AdmittedTheoremObject where
  object : TheoremSpecificObject
  substrate : UpstreamMathlibSubstrate
  localWitness : String
  bridgeEvidence : String
  analyticModelChecked : Prop
  analyticModelWitness : analyticModelChecked
  analyticPersistenceBridgeChecked : Prop
  persistenceBridgeWitness : analyticPersistenceBridgeChecked
  sourceBoundaryLedgerChecked : Prop
  sourceBoundaryLedgerWitness : sourceBoundaryLedgerChecked
  classicalRemainderCarried : formalizationCertificate.sourceConjectureClosureClaimed = false
  sourceKeyChecked : object.sourceKey = sourceRepository
  theoremObjectChecked : object.theoremObject = sourceDescription

end HautevilleHouse
end AnalyticityContextPdesCanonicalLaneLean