---@diagnostic disable:duplicate-doc-alias
---@diagnostic disable:duplicate-doc-field
---@diagnostic disable:duplicate-doc-param

---@meta

---@class Garage
---@field EntryPoint vector3
---@field SpawnPoint vector3
---@field Sprite number
---@field Scale number
---@field Colour number
---@field ImpoundedName string

---@class Impound
---@field GetOutPoint vector3
---@field SpawnPoint vector3
---@field Sprite number
---@field Scale number
---@field Colour number
---@field Cost number

exports.esx_garage = {};

--- Get all Garages
---
--- `CLIENT`
---
---@return table<string, Garage>
function exports.esx_garage:getGarages() end

--- Get all Impounds
---
--- `CLIENT`
---
---@return table<string, Impound>
function exports.esx_garage:getImpounds() end
