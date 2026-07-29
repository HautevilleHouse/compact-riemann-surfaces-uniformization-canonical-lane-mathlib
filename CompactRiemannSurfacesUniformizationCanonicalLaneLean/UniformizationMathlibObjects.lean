import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.Core
import Mathlib.Data.Set.Basic
import Mathlib.Analysis.Complex.Basic
import Mathlib.Topology.Algebra.UniformGroup

namespace HautevilleHouse
namespace CompactRiemannSurfacesUniformizationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

universe u v w

abbrev RiemannSurface : Type := 
  Set Complex

structure TheoremSpecificObject where
  sourceKey : String
  theoremObject : String
  claimBoundary : String
deriving Repr, DecidableEq

structure UpstreamMathlibSubstrate where
  surfaceCarrier : Type u
  universalCover : Set Complex
  fuchsianGroupGate : Prop
  coveringMapBridge : Prop
  sourceBoundaryLedger : Set String

structure AdmittedTheoremObject where
  object : TheoremSpecificObject
  substrate : UpstreamMathlibSubstrate
  localWitness : String
  bridgeEvidence : String
  uniformizationModelChecked : Prop
  uniformizationModelWitness : uniformizationModelChecked
  coveringMapBridgeChecked : Prop
  coveringMapBridgeWitness : coveringMapBridgeChecked
  fuchsianGroupBoundaryChecked : Prop
  fuchsianGroupBoundaryWitness : fuchsianGroupBoundaryChecked
  classicalRemainderCarried : formalizationCertificate.sourceConjectureClosureClaimed = false
  sourceKeyChecked : object.sourceKey = sourceRepository
  theoremObjectChecked : object.theoremObject = sourceDescription

def theoremSpecificObject : TheoremSpecificObject := {
  sourceKey := sourceRepository,
  theoremObject := sourceDescription,
  claimBoundary := sourceTheoremBoundary.claimBoundary
}

def NativeBridgeClosed (O : AdmittedTheoremObject) : Prop :=
  O.object.sourceKey = sourceRepository ∧
  O.object.theoremObject = sourceDescription ∧
  O.uniformizationModelChecked ∧
  O.coveringMapBridgeChecked ∧
  O.fuchsianGroupBoundaryChecked ∧
  (formalizationCertificate.sourceConjectureClosureClaimed = false)

def ScopedClosure (O : AdmittedTheoremObject) : Prop :=
  NativeBridgeClosed O

end CompactRiemannSurfacesUniformizationCanonicalLaneLean
end HautevilleHouse