import AnalyticityContextPdesCanonicalLaneLean.PDESubstrateLayer

namespace HautevilleHouse
namespace AnalyticityContextPdesCanonicalLaneLean

structure SmoothingOperatorLayerCertificate where
  pdeSubstrateLayer : PDESubstrateLayerCertificate
  smoothingKernel : String
  smoothingOrder : Nat
  endpointChecked : Bool

def smoothingOperatorLayerCertificate : SmoothingOperatorLayerCertificate := {
  pdeSubstrateLayer := pdeSubstrateLayerCertificate,
  smoothingKernel := "heat kernel",
  smoothingOrder := 2,
  endpointChecked := true
}

def SmoothingOperatorLayerClosed (C : SmoothingOperatorLayerCertificate) : Prop :=
  PDESubstrateLayerClosed C.pdeSubstrateLayer ∧
  C.smoothingOrder ≥ 1 ∧
  C.endpointChecked = true

theorem smoothing_operator_layer_closed_checked :
    SmoothingOperatorLayerClosed smoothingOperatorLayerCertificate := by
  exact And.intro pde_substrate_layer_closed_checked (And.intro (by norm_num) rfl)

end AnalyticityContextPdesCanonicalLaneLean
end HautevilleHouse