import HautevilleHouse.CompactRiemannSurfacesUniformizationCanonicalLaneLean.UniformizationAdmissibleClass

namespace HautevilleHouse
namespace CompactRiemannSurfacesUniformizationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.bridgeChecked = true ∧ A.object.certificate.uniformizationChecked = true

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  have h1 : A.object.bridgeChecked = true := by
    rcases A with ⟨obj, _, _, _⟩
    dsimp at obj
    exact obj.bridgeChecked
  have h2 : A.object.certificate.uniformizationChecked = true := by
    rcases A with ⟨obj, _, _, _⟩
    dsimp at obj
    exact obj.certificate.uniformizationChecked
  exact And.intro h1 h2

end CompactRiemannSurfacesUniformizationCanonicalLaneLean
end HautevilleHouse