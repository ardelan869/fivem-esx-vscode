---@diagnostic disable:duplicate-doc-alias
---@diagnostic disable:duplicate-doc-field
---@diagnostic disable:duplicate-doc-param

---@meta

---@class ESXPlayerAccount
---@field name string
---@field money number
---@field label string
---@field round boolean
---@field index number

---@class ESXPlayerJob
---@field id number
---@field name string
---@field label string
---@field grade number
---@field grade_name string
---@field grade_label string
---@field grade_salary number
---@field onDuty? boolean
---@field skin_male? table<string, number>
---@field skin_female? table<string, number>

---@class ESXLoadoutWeapon
---@field name string
---@field ammo number
---@field label string
---@field components string[]
---@field tintIndex number

---@class ESXItem
---@field name string
---@field count number
---@field label string
---@field weight number
---@field limit number
---@field usable boolean
---@field rare boolean
---@field canRemove boolean

---@class ESXPlayerData
---@field accounts ESXPlayerAccount[]
---@field coords vector3
---@field dateofbirth string
---@field firstName string
---@field lastName string
---@field job ESXPlayerJob
---@field height number
---@field identifier string
---@field inventory ESXItem[]
---@field loadout ESXLoadoutWeapon[]
---@field metadata table<string, any>
---@field money number
---@field name string
---@field sex string

---@class ESXProgressBarAnimationOptions
---@field type 'anim' | 'Scenario'
---@field lib string
---@field dict string

---@class ESXProgressBarOptions
---@field animation ESXProgressBarAnimationOptions
---@field FreezePlayer? boolean
---@field onFinish? fun()
---@field onCancel? fun()

---@alias ESXVehicleType 'bike' | 'trailer' | 'boat' | 'heli' | 'plane' | 'train'

--- This function will return a `bool` if the player has sucessfully loaded. This should be checked before manipulating or checking data of the player.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/client/functions#isplayerloaded)
---
--- `CLIENT`
---@return boolean
function ESX.IsPlayerLoaded() end

--- Returns the player's local data.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/client/functions#getplayerdata)
---
--- `CLIENT`
---
---@return ESXPlayerData
function ESX.GetPlayerData() end

--- Searches the player's inventory for the given items.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/client/functions#getplayerdata)
---
--- `CLIENT`
---
---@overload fun(items: string | string[], count: false): table<string, ESXItem>
---@overload fun(items: string | string[], count: true): table<string, number>
---@return table<string, ESXItem | number>
function ESX.SearchInventory(items, count) end

--- Sets the player's local data.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/client/functions#setplayerdata)
---
--- `CLIENT`
---
---@param key 'accounts' | 'coords' | 'dateofbirth' | 'firstName' | 'lastName' | 'job' | 'height' | 'identifier' | 'inventory' | 'loadout' | 'money' | 'name' | 'sex' | string
---@param val any
function ESX.SetPlayerData(key, val) end

--- Displays a progress bar.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/client/functions#progressbar)
---
--- `CLIENT`
---
---@param message string
---@param length number
---@param Options? ESXProgressBarOptions
function ESX.Progressbar(message, length, Options) end

--- Closes the progress bar
---
--- `CLIENT`
function ESX.CancelProgressbar() end

--- This function shows a notification to the player.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/esx_notify)
---
--- `CLIENT`
---
---@param message string
---@param notifyType? 'info' | 'success' | 'error'
---@param length? number
function ESX.ShowNotification(message, notifyType, length) end

--- Will show a floating text on screen
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/esx_textui#textui)
---
--- `CLIENT`
---
---@param message string
---@param type? 'info' | 'success' | 'error'
function ESX.TextUI(message, type) end

--- Hides the text ui
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/esx_textui#hideui)
---
--- `CLIENT`
---
function ESX.HideUI() end

--- This function will show a default GTA 5 notification
---
--- [Hud Color Indices](https://docs.fivem.net/docs/game-references/hud-colors/)
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/client/functions#showadvancednotification)
---
--- `CLIENT`
---
---@param sender string
---@param subject string
---@param msg string
---@param textureDict string
---@param iconType number
---@param flash? boolean
---@param saveToBrief? boolean
---@param hudColorIndex? number
function ESX.ShowAdvancedNotification(sender, subject, msg, textureDict, iconType, flash, saveToBrief, hudColorIndex) end

--- This function shows a help notification on the top left of the screen. Either needs to be ran every frame or a duration can be optionally set.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/client/functions#showhelpnotification)
---
--- `CLIENT`
---
---@param msg string
---@param thisFrame? boolean default: `false`
---@param beep? boolean default: `false`
---@param duration? number `default: `-1`
function ESX.ShowHelpNotification(msg, thisFrame, beep, duration) end

--- This function shows a floating help notification, this needs to be ran every millisecond.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/client/functions#showfloatinghelpnotification)
---
--- `CLIENT`
---
---@param msg string
---@param coords vector3
function ESX.ShowFloatingHelpNotification(msg, coords) end

--- This function draws a mission text. Hast to be ran every frame.
---
--- `CLIENT`
---
---@param msg string
---@param time vector3
function ESX.DrawMissionText(msg, time) end

--- This function will turn a string into a (rockstar) hash. Which for example could be used to display a key of a custom keybind.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/client/functions#hashstring)
---
--- `CLIENT`
---
---@param str string
function ESX.HashString(str) end

--- This functions registers an input.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/client/functions#registerinput)
---
--- `CLIENT`
---
---@param command_name string
---@param label string
---@param input_group string
---@param key string
---@param on_press fun(source: 0, args: string[], rawCommand: string)
---@param on_release? fun(source: 0, args: string[], rawCommand: string)
function ESX.RegisterInput(command_name, label, input_group, key, on_press, on_release) end

--- This function triggers a server callback.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/client/functions#triggerservercallback)
---
--- `CLIENT`
---
---@param eventName string
---@param callback fun(...: any)
---@param ... any
function ESX.TriggerServerCallback(eventName, callback, ...) end

--- This function triggers a server callback and awaits the response.
---
--- `CLIENT`
---
---@param eventName string
---@param ... any
---@return any
function ESX.AwaitServerCallback(eventName, ...) end

--- This function registers a client callback, which is used for sending Client Data, to the server.
---
--- `CLIENT`
---
---@param eventName string
---@param callback fun(cb: fun(...: any), ...: any)
function ESX.RegisterClientCallback(eventName, callback) end

--- This function checks if a client callback exists.
---
--- `CLIENT`
---
---@param eventName string
---@return boolean
function ESX.DoesClientCallbackExist(eventName, callback) end

--- Returns the player’s specified account
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/client/functions#getplayeraccount)
---
--- `CLIENT`
---
---@param account 'money' | 'bank' | 'black_money' | string
---@return ESXPlayerAccount?
function ESX.GetAccount(account) end

--- Opens the player’s inventory. (Default es_extended inventory)
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/client/functions#showinventory)
---
--- `CLIENT`
---
function ESX.ShowInventory() end

--- Returns the vehicle type of the given model.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/client/functions#getvehicletype)
---
--- `CLIENT`
---
---@param model string | number
---@return ESXVehicleType | false
function ESX.GetVehicleType(model) end

ESX.GetVehicleTypeClient = ESX.GetVehicleType;

--- Will register a secure net event
---
--- `CLIENT`
---
---@param name string
---@param func fun(...: any)
function ESX.SecureNetEvent(name, func) end
