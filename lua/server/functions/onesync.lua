---@diagnostic disable:duplicate-doc-alias
---@diagnostic disable:duplicate-doc-field
---@diagnostic disable:duplicate-doc-param

---@meta

ESX.OneSync = {};

--- This function gets all players in the given radius.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/server/onesync#getplayersinarea)
---
--- `SERVER`
---
---@param source vector3 | number playerId or vector3 coordinates
---@param maxDistance number
---@param ignore? table<number, true> playerIds to ignore, where the key is playerId and value is true
---@return { id: number; ped: number; coords: vector3; dist: number; }[]
function ESX.OneSync.GetPlayersInArea(source, maxDistance, ignore) end

--- This function returns the closest player from the given player.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/server/onesync#getclosestplayer)
---
--- `SERVER`
---
---@param source vector3 | number playerId or vector3 coordinates
---@param maxDistance number
---@param ignore? table<number, true> playerIds to ignore, where the key is playerId and value is true
function ESX.OneSync.GetClosestPlayer(source, maxDistance, ignore) end

--- This function will spawn a vehicle with the vehicle server setter, which means the vehicle will belong to the server and won’t be removed when no clients are active.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/server/onesync#spawnvehicle)
---
--- `SERVER`
---
---@param model number | string
---@param coords vector3 | { x: number, y: number, z: number }
---@param heading number
---@param properties? ESXVehicleOptionalProperties
---@param cb fun(netId: number)
function ESX.OneSync.SpawnVehicle(model, coords, heading, properties, cb) end

--- This function will spawn an object from the Serverside.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/server/onesync#spawnobject)
---
--- `SERVER`
---
---@param model number | string
---@param coords vector3 | { x: number, y: number, z: number }
---@param heading number
---@param cb fun(netId: number)
function ESX.OneSync.SpawnObject(model, coords, heading, cb) end

--- This function will spawn a ped from the Serverside.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/server/onesync#spawnped)
---
--- `SERVER`
---
---@param model number | string
---@param coords vector3 | { x: number, y: number, z: number }
---@param heading number
---@param cb fun(netId: number)
function ESX.OneSync.SpawnPed(model, coords, heading, cb) end

--- This function will spawn a ped in a vehicle from the Serverside.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/server/onesync#spawnpedinvehicle)
---
--- `SERVER`
---
---@param model number | string
---@param vehicle number entityId
---@param seat number
---@param cb fun(netId: number)
function ESX.OneSync.SpawnPedInVehicle(model, vehicle, seat, cb) end

--- This function will return the peds in the given area.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/server/onesync#getpedsinarea)
---
--- `SERVER`
---
---@param coords vector3
---@param maxDistance number
---@param modelFilter table<number, true>
---@return number[]
function ESX.OneSync.GetPedsInArea(coords, maxDistance, modelFilter) end

--- This function will return the objects in the given area.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/server/onesync#getobjectsinarea)
---
--- `SERVER`
---
---@param coords vector3
---@param maxDistance number
---@param modelFilter table<number, true>
---@return number[]
function ESX.OneSync.GetObjectsInArea(coords, maxDistance, modelFilter) end

--- This function will return the vehicles in the given area.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/server/onesync#getvehiclesinarea)
---
--- `SERVER`
---
---@param coords vector3
---@param maxDistance number
---@param modelFilter table<number, true>
---@return number[]
function ESX.OneSync.GetVehiclesInArea(coords, maxDistance, modelFilter) end

--- This function will return the closest ped in the given area.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/server/onesync#getclosestped)
---
--- `SERVER`
---
---@param coords vector3
---@param modelFilter table<number, true>
---@return number entityId
---@return number distance
---@return vector3 coords
function ESX.OneSync.GetClosestPed(coords, modelFilter) end

--- This function will return the closest object in the given area.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/server/onesync#getclosestobject)
---
--- `SERVER`
---
---@param coords vector3
---@param modelFilter table<number, true>
---@return number entityId
---@return number distance
---@return vector3 coords
function ESX.OneSync.GetClosestObject(coords, modelFilter) end

--- This function will return the closest vehicle in the given area.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/server/onesync#getclosestvehicle)
---
--- `SERVER`
---
---@param coords vector3
---@param modelFilter table<number, true>
---@return number entityId
---@return number distance
---@return vector3 coords
function ESX.OneSync.GetClosestVehicle(coords, modelFilter) end
