---@class ScriptedAnimations
C_ScriptedAnimations = {}

---@return ScriptedAnimationEffect scriptedAnimationEffects
function C_ScriptedAnimations.GetAllScriptedAnimationEffects() end

---@class ScriptedAnimationBehavior
local ScriptedAnimationBehavior = {}
ScriptedAnimationBehavior.None = 0
ScriptedAnimationBehavior.TargetShake = 1
ScriptedAnimationBehavior.TargetKnockBack = 2
ScriptedAnimationBehavior.SourceRecoil = 3
ScriptedAnimationBehavior.SourceCollideWithTarget = 4
ScriptedAnimationBehavior.UIParentShake = 5

---@class ScriptedAnimationTrajectory
local ScriptedAnimationTrajectory = {}
ScriptedAnimationTrajectory.AtSource = 0
ScriptedAnimationTrajectory.AtTarget = 1
ScriptedAnimationTrajectory.Straight = 2
ScriptedAnimationTrajectory.CurveLeft = 3
ScriptedAnimationTrajectory.CurveRight = 4
ScriptedAnimationTrajectory.CurveRandom = 5
ScriptedAnimationTrajectory.HalfwayBetween = 6

---@class ScriptedAnimationEffect
---@field id number
---@field visual number
---@field visualScale number
---@field duration number
---@field trajectory ScriptedAnimationTrajectory
---@field yawRadians number
---@field pitchRadians number
---@field rollRadians number
---@field offsetX number
---@field offsetY number
---@field offsetZ number
---@field animationSpeed number
---@field startBehavior ScriptedAnimationBehavior|nil
---@field startSoundKitID number|nil
---@field finishEffectID number|nil
---@field finishBehavior ScriptedAnimationBehavior|nil
---@field finishSoundKitID number|nil
local ScriptedAnimationEffect = {}

