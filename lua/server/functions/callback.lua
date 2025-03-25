---@diagnostic disable:duplicate-doc-alias
---@diagnostic disable:duplicate-doc-field
---@diagnostic disable:duplicate-doc-param

---@meta

--- This function triggers a client callback, which is used to get data from the client.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/server/functions#triggerclientcallback)
---
--- `SERVER`
---
---@param player number
---@param eventName string
---@param cb fun(...: any)
---@param ... any
function ESX.TriggerClientCallback(player, eventName, cb, ...) end

--- This function registers a server callback, which is used for sending Server Data, to a client.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/server/functions#registerservercallback)
---
--- `SERVER`
---
---@param eventName string
---@param cb fun(source: number, cb: fun(...: any), ...: any)
function ESX.RegisterServerCallback(eventName, cb) end

--- This function checks if a server callback exists.
---
--- `SERVER`
---
---@param eventName string
---@return boolean
function ESX.DoesServerCallbackExist(eventName) end
