---@diagnostic disable:duplicate-doc-alias
---@diagnostic disable:duplicate-doc-field
---@diagnostic disable:duplicate-doc-param

---@meta

--- `SERVER`
---
---@overload fun(eventName: 'esx:enteringVehicle', cb: fun(plate: string, seat: number, netId: number))
---@overload fun(eventName: 'esx:enteredVehicle', cb: fun(plate: string, seat: number, displayName: string, netId: number))
---@overload fun(eventName: 'esx:setJob', cb: fun(source: number, job: ESXPlayerJob, lastJob: ESXPlayerJob))
---@overload fun(eventName: 'esx:playerLoaded', cb: fun(source: number, xPlayer: xPlayer, isNew: boolean))
---@overload fun(eventName: 'esx:playerLogout', cb: fun(source: number))
---@overload fun(eventName: 'esx:playerDropped', cb: fun(source: number, reason?: string))
---@overload fun(eventName: 'esx:updateWeaponAmmo', cb: fun(weaponName: string, ammoCount: number))
---@overload fun(eventName: 'esx:onAddInventoryItem', cb: fun(source: number, item: string, count: number))
---@overload fun(eventName: 'esx:onRemoveInventoryItem', cb: fun(source: number, item: string, count: number))
---@overload fun(eventName: 'esx:playerSaved', cb: fun(source: number, xPlayer: xPlayer))
---@return EventHandler
function RegisterNetEvent(eventName, cb) end

--- `SERVER`
---
---@overload fun(eventName: 'esx:enteringVehicle', cb: fun(plate: string, seat: number, netId: number))
---@overload fun(eventName: 'esx:enteredVehicle', cb: fun(plate: string, seat: number, displayName: string, netId: number))
---@overload fun(eventName: 'esx:setJob', cb: fun(source: number, job: ESXPlayerJob, lastJob: ESXPlayerJob))
---@overload fun(eventName: 'esx:playerLoaded', cb: fun(source: number, xPlayer: xPlayer, isNew: boolean))
---@overload fun(eventName: 'esx:playerLogout', cb: fun(source: number))
---@overload fun(eventName: 'esx:playerDropped', cb: fun(source: number, reason?: string))
---@overload fun(eventName: 'esx:updateWeaponAmmo', cb: fun(weaponName: string, ammoCount: number))
---@overload fun(eventName: 'esx:onAddInventoryItem', cb: fun(source: number, item: string, count: number))
---@overload fun(eventName: 'esx:onRemoveInventoryItem', cb: fun(source: number, item: string, count: number))
---@overload fun(eventName: 'esx:playerSaved', cb: fun(source: number, xPlayer: xPlayer))
---@return EventHandler
function AddEventHandler(eventName, cb) end
