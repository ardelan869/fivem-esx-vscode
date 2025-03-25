---@diagnostic disable:duplicate-doc-alias
---@diagnostic disable:duplicate-doc-field
---@diagnostic disable:duplicate-doc-param

---@meta

---@class ESXContextElement
---@field unselectable? boolean
---@field icon? string
---@field title string
---@field val? string
---@field input? boolean
---@field inputType? string
---@field inputPlaceholder? string
---@field inputMin? number
---@field inputMax? number

---@alias ESXContextMenuPositions 'right' | 'left' | 'center'

---@class ESXContextMenu
---@field position ESXContextMenuPositions
---@field eles ESXContextElement[]
---@field onSelect fun(menu: ESXContextMenu, element: ESXContextElement)
---@field onClose? fun(menu: ESXContextMenu)
---@field canClose? boolean

--- Opens a context menu.
---
--- `CLIENT`
---
---@param position ESXContextMenuPositions
---@param elements ESXContextElement[]
---@param onSelect fun(menu: ESXContextMenu, element: ESXContextElement)
---@param onClose? fun(menu: ESXContextMenu)
---@param canClose? boolean
function ESX.OpenContext(position, elements, onSelect, onClose, canClose) end

--- Opens the context, but does not focus the nui
---
--- `CLIENT`
---
---@param position ESXContextMenuPositions
---@param elements ESXContextElement[]
---@param onSelect fun(menu: ESXContextMenu, element: ESXContextElement)
---@param onClose? fun(menu: ESXContextMenu)
---@param canClose? boolean
function ESX.PreviewContext(position, elements, onSelect, onClose, canClose) end

--- Closes the current context menu
---
--- `CLIENT`
---
function ESX.CloseContext() end

--- Refreshes the current context menu
---
--- `CLIENT`
---
---@overload fun(elements: ESXContextElement[], position?: ESXContextMenuPositions)
---@overload fun(elements?: ESXContextElement[], position: ESXContextMenuPositions)
---@overload fun(elements: ESXContextElement[], position: ESXContextMenuPositions)
function ESX.RefreshContext(elements, position) end
