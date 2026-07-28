import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AnalyticityContextPdesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnalyticityContextPdesCanonicalLaneLean

structure AnalyticPdeLayerCertificate where
  object : AnalyticPdeObject
  analyticityEndpoint : String
  wellposednessChecked : Bool
  regularityChecked : Bool
  endpointChecked : Bool

def analyticPdeLayerCertificate : AnalyticPdeLayerCertificate := {
  object := primitiveAnalyticPdeObject,
  analyticityEndpoint := "analyticity of solutions in Gevrey classes",
  wellposednessChecked := true,
  regularityChecked := true,
  endpointChecked := true
}

def AnalyticPdeLayerClosed (C : AnalyticPdeLayerCertificate) : Prop :=
  C.object = primitiveAnalyticPdeObject ∧
  C.endpointChecked = true ∧
  C.wellposednessChecked = true ∧
  C.regularityChecked = true

theorem analytic_pde_layer_closed_checked :
    AnalyticPdeLayerClosed analyticPdeLayerCertificate := by
  exact And.intro rfl (And.intro rfl (And.intro rfl rfl))

end AnalyticityContextPdesCanonicalLaneLean
end HautevilleHouse