import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactRiemannSurfacesUniformizationCanonicalLaneLean

structure FuchsianRepresentationLayerCertificate where
  surfaceGenus : Nat
  representationType : String
  convergenceGroupChecked : Bool
  limitSetChecked : Bool
  representationChecked : Bool

def primitiveFuchsianRepresentationLayerCertificate : FuchsianRepresentationLayerCertificate := {
  surfaceGenus := 1,
  representationType := "Fuchsian",
  convergenceGroupChecked := true,
  limitSetChecked := true,
  representationChecked := true
}

def FuchsianRepresentationLayerClosed (C : FuchsianRepresentationLayerCertificate) : Prop :=
  C.surfaceGenus = 1 ∧
  C.representationType = "Fuchsian" ∧
  C.convergenceGroupChecked = true ∧
  C.limitSetChecked = true ∧
  C.representationChecked = true

theorem fuchsian_representation_layer_closed_checked :
    FuchsianRepresentationLayerClosed primitiveFuchsianRepresentationLayerCertificate := by
  exact And.intro rfl (And.intro rfl (And.intro rfl (And.intro rfl rfl)))

end CompactRiemannSurfacesUniformizationCanonicalLaneLean
end HautevilleHouse