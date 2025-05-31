---@diagnostic disable:duplicate-doc-alias
---@diagnostic disable:duplicate-doc-field
---@diagnostic disable:duplicate-doc-param

---@meta

---@class ESXDeathEventData
---@field victimCoords vector3
---@field killerCoords? vector3
---@field killedByPlayer boolean
---@field deathCause number
---@field distance? number
---@field killerServerId? number
---@field killerClientId? number

--- `CLIENT`, `SERVER`
---
---@overload fun(eventName: 'esx:playerJumping', cb: fun())
---@overload fun(eventName: 'esx:enteringVehicleAborted', cb: fun())
---@overload fun(eventName: 'esx:exitedVehicle', cb: fun())
---@overload fun(eventName: 'esx:onPlayerSpawn', cb: fun())
---@overload fun(eventName: 'esx:onPlayerDeath', cb: fun(data: ESXDeathEventData))
---@return EventHandler
function RegisterNetEvent(eventName, cb) end

--- `CLIENT`, `SERVER`
---
---@overload fun(eventName: 'esx:playerJumping', cb: fun())
---@overload fun(eventName: 'esx:enteringVehicleAborted', cb: fun())
---@overload fun(eventName: 'esx:exitedVehicle', cb: fun())
---@overload fun(eventName: 'esx:onPlayerSpawn', cb: fun())
---@overload fun(eventName: 'esx:onPlayerDeath', cb: fun(data: ESXDeathEventData))
---@return EventHandler
function AddEventHandler(eventName, cb) end
