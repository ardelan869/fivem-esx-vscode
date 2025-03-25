---@diagnostic disable:duplicate-doc-alias
---@diagnostic disable:duplicate-doc-field
---@diagnostic disable:duplicate-doc-param

---@meta

exports.esx_textui = {};

--- Will show a floating text on screen
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/esx_textui#textui)
---
--- `CLIENT`
---
---@param message string
---@param type? 'info' | 'success' | 'error'
function exports.esx_textui:TextUI(message, type) end

--- Hides the text ui
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/esx_textui#hideui)
---
--- `CLIENT`
---
function exports.esx_textui:HideUI() end
