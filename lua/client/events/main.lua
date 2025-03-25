---@diagnostic disable:duplicate-doc-alias
---@diagnostic disable:duplicate-doc-field
---@diagnostic disable:duplicate-doc-param

---@meta

--- `CLIENT`
---
---@overload fun(eventName: 'esx:addInventoryItem', cb: fun(item: string, count: number | false, showNotification?: boolean))
---@overload fun(eventName: 'esx:playerLoaded', cb: fun(xPlayer: ESXPlayerData, isNew: boolean, skin: table<string, number>))
---@overload fun(eventName: 'esx:enteringVehicle', cb: fun(vehicle: number, plate: string, seat: number, netId: number))
---@overload fun(eventName: 'esx:enteredVehicle', cb: fun(vehicle: number, plate: string, seat: number, displayName: string, netId: number))
---@overload fun(eventName: 'esx:pauseMenuActive', cb: fun())
---@overload fun(eventName: 'esx:setJob', cb: fun(job: ESXPlayerJob, lastJob: ESXPlayerJob))
function RegisterNetEvent(eventName, cb) end
