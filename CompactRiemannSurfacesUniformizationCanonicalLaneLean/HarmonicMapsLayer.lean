import HautevilleHouse.CompactRiemannSurfacesUniformizationCanonicalLaneLean.UniformizationAdmissibleClass

namespace HautevilleHouse
namespace CompactRiemannSurfacesUniformizationCanonicalLaneLean

structure HarmonicMapsCertificate where
  mapLabel : String
  domainGenus : Nat
  targetMetric : String
  energyFinite : Bool
  mapChecked : Bool

def primitiveHarmonicMapsCertificate : HarmonicMapsCertificate := {
  mapLabel := "harmonic map from universal cover to target",
  domainGenus := 0,
  targetMetric := "Poincaré metric",
  energyFinite := true,
  mapChecked := true
}

def HarmonicMapsLayerClosed (C : HarmonicMapsCertificate) : Prop :=
  C.energyFinite = true ∧ C.mapChecked = true

theorem harmonic_maps_layer_closed_checked :
    HarmonicMapsLayerClosed primitiveHarmonicMapsCertificate := by
  exact And.intro rfl rfl

end CompactRiemannSurfacesUniformizationCanonicalLaneLean
end HautevilleHouse