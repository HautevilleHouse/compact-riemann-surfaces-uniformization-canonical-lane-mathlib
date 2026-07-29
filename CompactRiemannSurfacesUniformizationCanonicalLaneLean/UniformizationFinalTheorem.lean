import HautevilleHouse.CompactRiemannSurfacesUniformizationCanonicalLaneLean.UniformizationGateLemmas

namespace HautevilleHouse
namespace CompactRiemannSurfacesUniformizationCanonicalLaneLean

def ConstrainedUniformizationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_uniformization_endgame (A : AdmissibleClass) :
    ConstrainedUniformizationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

theorem uniformization_endgame_certified :
    ConstrainedUniformizationClosure primitiveAdmissibleClass := by
  exact constrained_uniformization_endgame primitiveAdmissibleClass

end CompactRiemannSurfacesUniformizationCanonicalLaneLean
end HautevilleHouse