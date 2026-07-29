import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactRiemannSurfacesUniformizationCanonicalLaneLean

def ConstrainedUniformizationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_uniformization_endgame (A : AdmissibleClass) :
    ConstrainedUniformizationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CompactRiemannSurfacesUniformizationCanonicalLaneLean
end HautevilleHouse
