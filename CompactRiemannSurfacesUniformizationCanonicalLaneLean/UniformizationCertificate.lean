import HautevilleHouse.CompactRiemannSurfacesUniformizationCanonicalLaneLean.UniformizationAdmissibleClass
import HautevilleHouse.CompactRiemannSurfacesUniformizationCanonicalLaneLean.PoincareMetricLayer
import HautevilleHouse.CompactRiemannSurfacesUniformizationCanonicalLaneLean.FuchsianGroupLayer
import HautevilleHouse.CompactRiemannSurfacesUniformizationCanonicalLaneLean.HarmonicMapsLayer

namespace HautevilleHouse
namespace CompactRiemannSurfacesUniformizationCanonicalLaneLean

structure FullUniformizationCertificate where
  poincareLayer : PoincareMetricCertificate
  fuchsianLayer : FuchsianGroupCertificate
  harmonicLayer : HarmonicMapsCertificate
  allClosed : Bool

def primitiveFullUniformizationCertificate : FullUniformizationCertificate := {
  poincareLayer := primitivePoincareMetricCertificate,
  fuchsianLayer := primitiveFuchsianGroupCertificate,
  harmonicLayer := primitiveHarmonicMapsCertificate,
  allClosed := true
}

def FullCertificateClosed (C : FullUniformizationCertificate) : Prop :=
  PoincareMetricLayerClosed C.poincareLayer ∧
  FuchsianGroupLayerClosed C.fuchsianLayer ∧
  HarmonicMapsLayerClosed C.harmonicLayer ∧
  C.allClosed = true

theorem full_certificate_closed_checked :
    FullCertificateClosed primitiveFullUniformizationCertificate := by
  exact And.intro poincare_metric_layer_closed_checked
    (And.intro fuchsian_group_layer_closed_checked
    (And.intro harmonic_maps_layer_closed_checked rfl))

end CompactRiemannSurfacesUniformizationCanonicalLaneLean
end HautevilleHouse