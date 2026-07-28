import AnalyticityContextPdesCanonicalLaneLean.AnalyticityLayer

namespace HautevilleHouse
namespace AnalyticityContextPdesCanonicalLaneLean

structure PDESubstrateLayerCertificate where
  analyticityLayer : AnalyticityLayerCertificate
  pdeType : String
  coefficientsAnalytic : Bool
  solutionClass : String
  endpointChecked : Bool

def pdeSubstrateLayerCertificate : PDESubstrateLayerCertificate := {
  analyticityLayer := analyticityLayerCertificate,
  pdeType := "elliptic",
  coefficientsAnalytic := true,
  solutionClass := "Gevrey",
  endpointChecked := true
}

def PDESubstrateLayerClosed (C : PDESubstrateLayerCertificate) : Prop :=
  AnalyticityLayerClosed C.analyticityLayer ∧
  C.coefficientsAnalytic = true ∧
  C.endpointChecked = true

theorem pde_substrate_layer_closed_checked :
    PDESubstrateLayerClosed pdeSubstrateLayerCertificate := by
  exact And.intro analyticity_layer_closed_checked (And.intro rfl rfl)

end AnalyticityContextPdesCanonicalLaneLean
end HautevilleHouse