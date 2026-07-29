import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactRiemannSurfacesUniformizationCanonicalLaneLean

structure RiemannSurfaceDatum where
  genus : ℕ
  holomorphicFormDimension : ℕ
  uniformizationType : String
  hyperbolicMetricPresent : Bool
  coveringMapChecked : Bool
  deckGroupFinitelyGenerated : Bool

def primitiveRiemannSurfaceDatum : RiemannSurfaceDatum := {
  genus := 0,
  holomorphicFormDimension := 0,
  uniformizationType := "spherical",
  hyperbolicMetricPresent := false,
  coveringMapChecked := true,
  deckGroupFinitelyGenerated := true
}

def RiemannSurfaceSubstrateReady (S : RiemannSurfaceDatum) : Prop :=
  S.uniformizationType ∈ {"spherical", "euclidean", "hyperbolic"} ∧
  S.coveringMapChecked = true ∧
  S.deckGroupFinitelyGenerated = true

theorem primitive_riemann_surface_substrate_ready_checked :
    RiemannSurfaceSubstrateReady primitiveRiemannSurfaceDatum := by
  refine And.intro ?_ (And.intro rfl rfl)
  decide

end CompactRiemannSurfacesUniformizationCanonicalLaneLean
end HautevilleHouse
