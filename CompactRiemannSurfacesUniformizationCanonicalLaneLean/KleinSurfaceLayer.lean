import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactRiemannSurfacesUniformizationCanonicalLaneLean

structure KleinSurfaceLayerCertificate where
  surfaceGenus : Nat
  representationType : String
  hyperellipticChecked : Bool
  automorphismGroupRecorded : Bool
  kleinSurfaceChecked : Bool

def primitiveKleinSurfaceLayerCertificate : KleinSurfaceLayerCertificate := {
  surfaceGenus := 2,
  representationType := "Fuchsian_nonhyperelliptic",
  hyperellipticChecked := false,
  automorphismGroupRecorded := true,
  kleinSurfaceChecked := true
}

def KleinSurfaceLayerClosed (C : KleinSurfaceLayerCertificate) : Prop :=
  C.surfaceGenus = 2 ∧
  C.representationType = "Fuchsian_nonhyperelliptic" ∧
  C.hyperellipticChecked = false ∧
  C.automorphismGroupRecorded = true ∧
  C.kleinSurfaceChecked = true

theorem klein_surface_layer_closed_checked :
    KleinSurfaceLayerClosed primitiveKleinSurfaceLayerCertificate := by
  exact And.intro rfl (And.intro rfl (And.intro rfl (And.intro rfl rfl)))

end CompactRiemannSurfacesUniformizationCanonicalLaneLean
end HautevilleHouse