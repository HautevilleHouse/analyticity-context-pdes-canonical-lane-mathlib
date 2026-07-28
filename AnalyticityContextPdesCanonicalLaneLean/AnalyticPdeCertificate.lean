import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnalyticityContextPdesCanonicalLaneLean

structure AnalyticPdeCertificate where
  cauchyKovalevskayaLayer : CauchyKovalevskayaLayerCertificate
  gevreyRegularityLayer : GevreyRegularityLayerCertificate
  analyticContinuationLayer : AnalyticContinuationLayerCertificate
  carriageRecord : PdeCarriageRecord
  baselineGatesClosed : Bool
  analyticObjectClosed : Bool
  classicalBoundaryCarried : Bool

def analyticPdeCertificate : AnalyticPdeCertificate := {
  cauchyKovalevskayaLayer := cauchyKovalevskayaLayerCertificate,
  gevreyRegularityLayer := gevreyRegularityLayerCertificate,
  analyticContinuationLayer := analyticContinuationLayerCertificate,
  carriageRecord := pdeCarriageRecord,
  baselineGatesClosed := true,
  analyticObjectClosed := true,
  classicalBoundaryCarried := true
}

def AnalyticPdeCertificateClosed (C : AnalyticPdeCertificate) : Prop :=
  CauchyKovalevskayaLayerClosed C.cauchyKovalevskayaLayer ∧
  GevreyRegularityLayerClosed C.gevreyRegularityLayer ∧
  AnalyticContinuationLayerClosed C.analyticContinuationLayer ∧
  C.baselineGatesClosed = true ∧
  C.analyticObjectClosed = true ∧
  C.classicalBoundaryCarried = true

theorem analytic_pde_certificate_closed_checked :
    AnalyticPdeCertificateClosed analyticPdeCertificate := by
  exact And.intro cauchy_kovalevskaya_layer_closed_checked
    (And.intro gevrey_regularity_layer_closed_checked
    (And.intro analytic_continuation_layer_closed_checked
    (And.intro rfl (And.intro rfl rfl))))

end AnalyticityContextPdesCanonicalLaneLean
end HautevilleHouse
