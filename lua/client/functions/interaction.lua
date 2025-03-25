---@diagnostic disable:duplicate-doc-alias
---@diagnostic disable:duplicate-doc-field
---@diagnostic disable:duplicate-doc-param

---@meta

--- Will register a new interaction.
---
--- `CLIENT`
---
---@param name string
---@param onPress fun()
---@param condition? fun(): boolean
function ESX.RegisterInteraction(name, onPress, condition) end

--- Will remove the given interaction.
---
--- `CLIENT`
---
---@param name string
function ESX.RemoveInteraction(name) end

--- Will return the interaction keybind
---
--- `CLIENT`
---
---@return string
function ESX.GetInteractKey() end
