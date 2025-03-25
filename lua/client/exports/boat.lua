---@diagnostic disable:duplicate-doc-alias
---@diagnostic disable:duplicate-doc-field
---@diagnostic disable:duplicate-doc-param

---@meta

---@class BoatGarage
---@field GaragePos vector3
---@field SpawnPoint vector4
---@field StorePos vector3
---@field StoreTP vector4

exports.esx_boat = {};

--- Get all Boat Garages
---
--- `CLIENT`
---
---@return table<string, BoatGarage>[]
function exports.esx_boat:getGarages() end
