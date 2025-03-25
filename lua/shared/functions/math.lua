---@diagnostic disable:duplicate-doc-alias
---@diagnostic disable:duplicate-doc-field
---@diagnostic disable:duplicate-doc-param

---@meta

ESX.Math = {};

--- Rounds the given value to the specified number of decimal places.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/shared/math#round)
---
--- `CLIENT`, `SERVER`
---
---@param value number
---@param numDecimalPlaces? number
---@return number
function ESX.Math.Round(value, numDecimalPlaces) end

ESX.Round = ESX.Math.Round;

--- Groups the digits of the given value.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/shared/math#groupdigits)
---
--- `CLIENT`, `SERVER`
---
---@param value string | number
---@return string
function ESX.Math.GroupDigits(value) end

--- Trims the given value.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/shared/math#trim)
---
--- `CLIENT`, `SERVER`
---
---@param value string | number
---@return string?
function ESX.Math.Trim(value) end

--- Returns a random number between the given min and max.
---
--- `CLIENT`, `SERVER`
---
---@param min number
---@param max number
---@return number
function ESX.Math.Random(min, max) end

--- Returns the heading in the direction of the given origin to the given target.
---
--- `CLIENT`, `SERVER`
---
---@param origin vector
---@param target vector
---@return number heading
function ESX.Math.GetHeadingFromCoords(origin, target) end
