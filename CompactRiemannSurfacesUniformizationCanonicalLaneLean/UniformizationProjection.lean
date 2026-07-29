import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.Core

namespace HautevilleHouse
namespace CompactRiemannSurfacesUniformizationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure UniformizationClosureState where
  object : AdmittedTheoremObject
  endpointSatisfied : Prop
  remainderRecorded : Prop

def uniformizationProjection : Projection UniformizationClosureState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem uniformization_projection_idempotent (x : UniformizationClosureState) :
    uniformizationProjection.toFun (uniformizationProjection.toFun x) = uniformizationProjection.toFun x := by
  exact uniformizationProjection.idempotent x

end CompactRiemannSurfacesUniformizationCanonicalLaneLean
end HautevilleHouse