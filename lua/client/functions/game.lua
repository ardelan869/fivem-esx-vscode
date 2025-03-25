---@diagnostic disable:duplicate-doc-alias
---@diagnostic disable:duplicate-doc-field
---@diagnostic disable:duplicate-doc-param

---@meta

---@class ESXVehicleProperties
---@field model number
---@field doorsBroken boolean[]
---@field windowsBroken boolean[]
---@field tyreBurst boolean[]
---@field tyresCanBurst boolean
---@field plate string
---@field plateIndex number
---@field bodyHealth number
---@field engineHealth number
---@field tankHealth number
---@field fuelLevel number
---@field dirtLevel number
---@field color1 number
---@field color2 number
---@field customPrimaryColor [number, number, number]|nil
---@field customSecondaryColor [number, number, number]|nil
---@field pearlescentColor number
---@field wheelColor number
---@field dashboardColor number
---@field interiorColor number
---@field wheels number
---@field windowTint number
---@field xenonColor number
---@field customXenonColor number|nil
---@field neonEnabled boolean[]
---@field neonColor [number, number, number]
---@field extras table<string, boolean>
---@field tyreSmokeColor [number, number, number]
---@field modSpoilers number
---@field modFrontBumper number
---@field modRearBumper number
---@field modSideSkirt number
---@field modExhaust number
---@field modFrame number
---@field modGrille number
---@field modHood number
---@field modFender number
---@field modRightFender number
---@field modRoof number
---@field modRoofLivery number
---@field modEngine number
---@field modBrakes number
---@field modTransmission number
---@field modHorns number
---@field modSuspension number
---@field modArmor number
---@field modTurbo boolean
---@field modSmokeEnabled boolean
---@field modXenon boolean
---@field modFrontWheels number
---@field modCustomFrontWheels boolean
---@field modBackWheels number
---@field modCustomBackWheels boolean
---@field modPlateHolder number
---@field modVanityPlate number
---@field modTrimA number
---@field modOrnaments number
---@field modDashboard number
---@field modDial number
---@field modDoorSpeaker number
---@field modSeats number
---@field modSteeringWheel number
---@field modShifterLeavers number
---@field modAPlate number
---@field modSpeakers number
---@field modTrunk number
---@field modHydrolic number
---@field modEngineBlock number
---@field modAirFilter number
---@field modStruts number
---@field modArchCover number
---@field modAerials number
---@field modTrimB number
---@field modTank number
---@field modWindows number
---@field modLivery number
---@field modLightbar number

---@class ESXVehicleOptionalProperties

ESX.Game = {};
ESX.Game.Utils = {};

--- This function takes a mugshot from given ped and returns it as a texture.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/client/functions#getpedmugshot)
---
--- `CLIENT`
---
---@param ped number
---@param transparent? boolean default: `false`
---@return string mugshot
---@return string txd
function ESX.Game.GetPedMugshot(ped, transparent) end

--- Teleports the given entity to the given coords and triggers the callback once finished.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/client/functions#teleport)
---
--- `CLIENT`
---
---@param entity number
---@param coords vector3 | vector4 | { x: number, y: number, z: number; heading?: number }
---@param cb? fun()
function ESX.Game.Teleport(entity, coords, cb) end

--- Spawns an object.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/client/functions#spawnobject)
---
--- `CLIENT`
---
---@param model string | number
---@param coords vector3 | vector4 | { x: number, y: number, z: number }
---@param cb? fun(object: number)
---@param networked? boolean default: `true`
function ESX.Game.SpawnObject(model, coords, cb, networked) end

--- Spawns a local object, which is only visible to the local player and no one else.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/client/functions#spawnlocalobject)
---
--- `CLIENT`
---
---@param model string | number
---@param coords vector3 | vector4 | { x: number, y: number, z: number }
---@param cb? fun(object: number)
function ESX.Game.SpawnLocalObject(model, coords, cb) end

--- Deletes the given vehicle.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/client/functions#deletevehicle)
---
--- `CLIENT`
---
---@param vehicle number
function ESX.Game.DeleteVehicle(vehicle) end

--- Deletes the given object.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/client/functions#deleteobject)
---
--- `CLIENT`
---
---@param object number
function ESX.Game.DeleteObject(object) end

--- Spawns a vehicle.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/client/functions#spawnvehicle)
---
--- `CLIENT`
---
---@param vehicleModel string | number
---@param coords vector3 | vector4 | { x: number, y: number, z: number }
---@param heading number
---@param cb? fun(vehicle: number)
---@param networked? boolean default: `true`
---@return number? vehicle
function ESX.Game.SpawnVehicle(vehicleModel, coords, heading, cb, networked) end

--- Spawns a local vehicle, which is only visible to the local player and no one else.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/client/functions#spawnlocalvehicle)
---
--- `CLIENT`
---
---@param vehicleModel string | number
---@param coords vector3 | vector4 | { x: number, y: number, z: number }
---@param heading number
---@param cb? fun(vehicle: number)
---@return number? vehicle
function ESX.Game.SpawnLocalVehicle(vehicleModel, coords, heading, cb) end

--- Returns whether the specified vehicle is empty.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/client/functions#isempty)
---
--- `CLIENT`
---
---@param vehicle number entity
function ESX.Game.IsVehicleEmpty(vehicle) end

--- Returns all objects the client has currently loaded.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/client/functions#getobjects)
---
--- `CLIENT`
---
---@return number[]
function ESX.Game.GetObjects() end

--- Returns all peds the client has currently loaded.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/client/functions#getpeds)
---
--- `CLIENT`
---
---@param onlyOtherPeds? boolean default: `false`
---@return number[]
function ESX.Game.GetPeds(onlyOtherPeds) end

--- Returns all vehicles the client has currently loaded.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/client/functions#getvehicles)
---
--- `CLIENT`
---
---@return number[]
function ESX.Game.GetVehicles() end

--- Returns all players the client has currently loaded.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/client/functions#getplayers)
---
--- `CLIENT`
---
---@param onlyOtherPlayers? boolean
---@param returnKeyValue? boolean
---@param returnPeds? boolean
---@return table<number, number>
function ESX.Game.GetPlayers(onlyOtherPlayers, returnKeyValue, returnPeds) end

--- Returns the closest entity handle, and distance to the entity.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/client/functions#getclosestentity)
---
--- `CLIENT`
---
---@param entities number[]
---@param isPlayerEntities? boolean default: `false`
---@param coords? vector3 | vector4 | { x: number, y: number, z: number }
---@param modelFilter? table<number, true>
---@return number entity
---@return number distance
function ESX.Game.GetClosestEntity(entities, isPlayerEntities, coords, modelFilter) end

--- Returns the closest object handle, and distance to the object.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/client/functions#getclosestobject)
---
--- `CLIENT`
---
---@param coords vector3 | vector4 | { x: number, y: number, z: number }
---@param modelFilter? table<number, true>
---@return number object
---@return number distance
function ESX.Game.GetClosestObject(coords, modelFilter) end

--- Returns the closest ped handle, and distance to the ped.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/client/functions#getclosestped)
---
--- `CLIENT`
---
---@param coords? vector3 | vector4 | { x: number, y: number, z: number }
---@param modelFilter? table<number, true>
---@return number ped
---@return number distance
function ESX.Game.GetClosestPed(coords, modelFilter) end

--- Returns the closest player handle, and distance to the player.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/client/functions#getclosestplayer)
---
--- `CLIENT`
---
---@param coords? vector3 | vector4 | { x: number, y: number, z: number }
---@param modelFilter? table<number, true>
---@return number player
---@return number distance
function ESX.Game.GetClosestPlayer(coords, modelFilter) end

--- Returns the closest vehicle handle, and distance to the vehicle.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/client/functions#getclosestvehicle)
---
--- `CLIENT`
---
---@param coords? vector3 | vector4 | { x: number, y: number, z: number }
---@param modelFilter? table<number, true>
---@return number vehicle
---@return number distance
function ESX.Game.GetClosestVehicle(coords, modelFilter) end

--- Returns all players within the max distance of a coord.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/client/functions#getplayersinarea)
---
--- `CLIENT`
---
---@param coords? vector3 | vector4 | { x: number, y: number, z: number }
---@param maxDistance number
---@return number[]
function ESX.Game.GetPlayersInArea(coords, maxDistance) end

--- Returns all vehicles within the max distance of a coord.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/client/functions#getvehiclesinarea)
---
--- `CLIENT`
---
---@param coords? vector3 | vector4 | { x: number, y: number, z: number }
---@param maxDistance number
---@return number[]
function ESX.Game.GetVehiclesInArea(coords, maxDistance) end

--- Returns a `boolean` saying if the given space is clear of other vehicles.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/client/functions#isspawnpointclear)
---
--- `CLIENT`
---
---@param coords vector3 | vector4 | { x: number, y: number, z: number }
---@param maxDistance number
---@return boolean
function ESX.Game.IsSpawnPointClear(coords, maxDistance) end

--- Returns vehicle in front of player.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/client/functions#getcurrentvehicle)
---
--- `CLIENT`
---
---@return number?
---@return vector3?
function ESX.Game.GetVehicleInDirection(vehicle, coords) end

--- Returns different properties about the given vehicle.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/client/functions#getvehicleproperties)
---
--- `CLIENT`
---
---@param vehicle number
---@return ESXVehicleProperties
function ESX.Game.GetVehicleProperties(vehicle) end

--- Sets different properties about the given vehicle.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/client/functions#setvehicleproperties)
---
--- `CLIENT`
---
---@param vehicle number
---@param properties ESXVehicleOptionalProperties
function ESX.Game.SetVehicleProperties(vehicle, properties) end

--- Draws a 3D text on the specified coords. Must be drawn every frame, ideally in a loop. `size` and `font` arguments are optional.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/client/functions#drawtext3d)
---
--- `CLIENT`
---
---@param coords vector3 | vector4 | { x: number, y: number, z: number }
---@param text string
---@param size? number
---@param font? number
function ESX.Game.Utils.DrawText3D(coords, text, size, font) end

--- This function will call and return shape test results.
---
--- `CLIENT`
---
---@param shape number
---@return boolean hit
---@return vector3 coords
---@return vector3 normal
---@return number material
---@return number entity
function ESX.Game.GetShapeTestResultSync(shape) end

--- This function will raycast the screen and return the results.
---
--- `CLIENT`
---
---@param depth number
---@param traceFlags number
---@param entity number
---@param options number
---@return vector3 target
---@return boolean hit
---@return vector3 coords
---@return vector3 normal
---@return number material
---@return number entity
function ESX.Game.RaycastScreen(depth, traceFlags, entity, options) end
