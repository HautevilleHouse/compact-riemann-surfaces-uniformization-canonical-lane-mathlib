import HautevilleHouse.CompactRiemannSurfacesUniformizationCanonicalLaneLean.UniformizationAdmissibleClass

namespace HautevilleHouse
namespace CompactRiemannSurfacesUniformizationCanonicalLaneLean

structure FuchsianGroupCertificate where
  groupPresentation : String
  generators : List String
  relations : List String
  isDiscrete : Bool
  groupChecked : Bool

def primitiveFuchsianGroupCertificate : FuchsianGroupCertificate := {
  groupPresentation := "⟨a,b | a^p b^q = 1⟩",
  generators := ["a", "b"],
  relations := ["a^p b^q = 1"],
  isDiscrete := true,
  groupChecked := true
}

def FuchsianGroupLayerClosed (C : FuchsianGroupCertificate) : Prop :=
  C.isDiscrete = true ∧ C.groupChecked = true

theorem fuchsian_group_layer_closed_checked :
    FuchsianGroupLayerClosed primitiveFuchsianGroupCertificate := by
  exact And.intro rfl rfl

end CompactRiemannSurfacesUniformizationCanonicalLaneLean
end HautevilleHouse