---@diagnostic disable:duplicate-doc-alias
---@diagnostic disable:duplicate-doc-field
---@diagnostic disable:duplicate-doc-param

---@meta

--- Sets a timeout for specified millisecond, after finishing the callback gets triggered.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/shared/timeout#settimeout)
---
--- `CLIENT`, `SERVER`
---
---@param msec number
---@param cb fun()
---@return number timeoutId
function ESX.SetTimeout(msec, cb) end

--- Clears the timeout with the given id.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/shared/timeout#cleartimeout)
---
--- `CLIENT`, `SERVER`
---
---@param timeoutId number
function ESX.ClearTimeout(timeoutId) end
