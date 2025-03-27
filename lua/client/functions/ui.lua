---@diagnostic disable:duplicate-doc-alias
---@diagnostic disable:duplicate-doc-field
---@diagnostic disable:duplicate-doc-param

---@meta

---@class ESXMenuCallbackData
---@field _namespace string
---@field _name string
---@field value? any
---@field current ESXMenuElement | string
---@field elements? ESXMenuElement[]

---@alias ESXMenuCallback fun(data: ESXMenuCallbackData, menu: ESXMenuBase)

---@class ESXMenuElement
---@field label string
---@field value? any
---@field type? 'slider' | string
---@field options? string[]
---@field min? number
---@field max? number

---@class ESXMenuData
---@field type? 'big' | 'default' | string
---@field title string
---@field align? 'left' | 'top-left' | 'top' | 'top-right' | 'right' | 'bottom-right' | 'bottom' | 'bottom-left' | 'center' | string
---@field elements? ESXMenuElement[]

---@alias ESXMenuType 'default' | 'dialog' | string

---@alias ESXMenuTypeCallback fun(namespace: string, name: string)

---@class ESXMenuBase
---@field type ESXMenuType
---@field namespace string
---@field resourceName string
---@field name string
---@field data ESXMenuData
---@field submit ESXMenuCallback
---@field cancel ESXMenuCallback
---@field change ESXMenuCallback
---@field close fun()
---@field update fun(query: table<string, any>, newData: table<string, any>)
---@field refresh fun()
---@field setElement fun(index: number, key: string, value: any)
---@field setElements fun(newElements: ESXMenuElement[])
---@field setTitle fun(newTitle: string)
---@field removeElement fun(query: table<string, any>)

ESX.UI = {};
ESX.UI.Menu = {};
---@type ESXMenuBase[]
ESX.UI.Menu.Opened = {};
---@type table<string, { open: ESXMenuTypeCallback; close: ESXMenuTypeCallback }>
ESX.UI.Menu.RegisteredTypes = {};

--- This function will show an inventory item notification.
---
--- `CLIENT`
---
---@param add boolean
---@param item string
---@param count number
function ESX.UI.ShowInventoryItemNotification(add, item, count) end

--- Registers a menu type.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/ui/menu/registertype)
---
--- `CLIENT`
---
---@param menuType string
---@param open ESXMenuTypeCallback
---@param close ESXMenuTypeCallback
function ESX.UI.Menu.RegisterType(menuType, open, close) end

--- Open a registered menu
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/esx_menu_default#esxuimenuopen)
---
--- `CLIENT`
---
---@param menuType ESXMenuType
---@param namespace string
---@param name string
---@param data ESXMenuData
---@param submit? ESXMenuCallback
---@param cancel? ESXMenuCallback
---@param change? ESXMenuCallback
---@param close? ESXMenuCallback
---@return ESXMenuBase
function ESX.UI.Menu.Open(menuType, namespace, name, data, submit, cancel, change, close) end

--- Closes the specified menu.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/ui/menu/close)
---
--- `CLIENT`
---
---@param menuType ESXMenuType
---@param namespace string
---@param name string
function ESX.UI.Menu.Close(menuType, namespace, name) end

--- Closes all open menus.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/ui/menu/closeall)
---
--- `CLIENT`
---
function ESX.UI.Menu.CloseAll() end

--- Returns the specified menu.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/ui/menu/getopened)
---
--- `CLIENT`
---
---@param menuType ESXMenuType
---@param namespace string
---@param name string
---@return ESXMenuBase
function ESX.UI.Menu.GetOpened(menuType, namespace, name) end

ESX.UI.Menu.IsOpen = ESX.UI.Menu.GetOpened;

--- Returns all open menus.
---
--- `CLIENT`
---
---@return ESXMenuBase[]
function ESX.UI.Menu.GetOpenedMenus() end
