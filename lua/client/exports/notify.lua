---@diagnostic disable:duplicate-doc-alias
---@diagnostic disable:duplicate-doc-field
---@diagnostic disable:duplicate-doc-param

---@meta

exports.esx_notify = {};

--- This function shows a notification to the player.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/esx_notify)
---
--- `CLIENT`
---
---@param message string
---@param notifyType? 'info' | 'success' | 'error'
---@param length? number
function exports.esx_notify:Notify(message, notifyType, length) end
