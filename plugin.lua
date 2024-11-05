---@meta

---@class ESXItem
---@field name string
---@field count number
---@field label string
---@field weight number
---@field usable boolean
---@field rare boolean
---@field canRemove boolean

---@class ESXPlayerAccount
---@field name string
---@field money number
---@field label string
---@field round boolean
---@field index number

---@class ESXPlayerJob
---@field id number
---@field name string
---@field label	string
---@field grade	number
---@field grade_name string
---@field grade_label	string
---@field grade_salary number
---@field skin_male	table
---@field skin_female	table

---@class ESXLoadoutWeapon
---@field name string
---@field ammo number
---@field label string
---@field components string[]
---@field tintIndex number

---@class ESXPLayerData
---@field accounts ESXPlayerAccount []
---@field coords vector3
---@field dateofbirth string
---@field firstName string
---@field lastName string
---@field job ESXPlayerJob
---@field height number
---@field identifier string
---@field inventory ESXItem[]
---@field loadout ESXLoadoutWeapon[]
---@field money number
---@field name string
---@field sex string

---@class ESXConfigWeaponComponent
---@field name string
---@field label string
---@field hash number

---@class ESXConfigWeapon
---@field name string
---@field label string
---@field components ESXConfigWeaponComponent[]

---@class ESXConfig
---@field Locale string
---@field OxInventory boolean
---@field Accounts table<string, { label: string, round: boolean }>
---@field StartingAccountMoney table<string, number>
---@field StartingInventoryItems false | table<string, number>
---@field DefaultSpawns { x: number, y: number, z: number; heading: number }[]
---@field AdminGroups table<string, true>
---@field EnablePaycheck boolean
---@field LogPaycheck boolean
---@field EnableSocietyPayouts boolean
---@field MaxWeight number
---@field PaycheckInterval number
---@field EnableDebug boolean
---@field EnableDefaultInventory boolean
---@field EnableWantedLevel boolean
---@field EnablePVP boolean
---@field Multichar boolean
---@field Identity boolean
---@field DistanceGive number
---@field AdminLogging boolean
---@field DisableHealthRegeneration boolean
---@field DisableVehicleRewards boolean
---@field DisableNPCDrops boolean
---@field DisableDispatchServices boolean
---@field DisableScenarios boolean
---@field DisableWeaponWheel boolean
---@field DisableAimAssist boolean
---@field DisableVehicleSeatShuff boolean
---@field DisableDisplayAmmo boolean
---@field RemoveHudComponents table<number, boolean>
---@field SpawnVehMaxUpgrades boolean
---@field CustomAIPlates string
---@field DefaultWeaponTints table<number, string>
---@field Weapons ESXConfigWeapon[]

---@class ESXJobGrade
---@field grade number
---@field label string
---@field salary number
---@field skin_male table<string, number>
---@field skin_female table<string, number>

---@class ESXJob
---@field name string
---@field label string
---@field grades table<string, ESXJobGrade>

---@alias ESXMenuTypeCallback fun(namespace: string, name: string)

---@class xPlayer
---@field accounts ESXPlayerAccount[]
---@field coords vector3
---@field group string
---@field identifier string
---@field job ESXJob
---@field loadout ESXLoadoutWeapon[]
---@field name string
---@field playerId number
---@field source number
---@field variables table<string, any>
---@field weight number
---@field maxWeight number
---@field metadata table<string, any>
---@field admin boolean
---@field license string
---@field triggerEvent fun(eventName: string, ...: any)
---@field setCoords fun(coordinates: vector4 | vector3 | { x: number; y: number; z: number; w?: number })
---@field getCoords fun(vector: boolean, heading: boolean): { x: number; y: number; z: number; heading: number }
---@field kick fun(reason: string)
---@field setMoney fun(money: number)
---@field getMoney fun(): number
---@field addMoney fun(money: number, reason: string)
---@field removeMoney fun(money: number, reason: string)
---@field getIdentifier fun(): string
---@field setGroup fun(newGroup: string)
---@field getGroup fun(): string
---@field set fun(key: string, value: any)
---@field get fun(key: string): any?
---@field getAccounts (fun(): ESXPlayerAccount[]) | (fun(minimal: true): table<string, number>)
---@field getAccount fun(account: string): ESXPlayerAccount?
---@field getInventory (fun(): ESXItem[]) | (fun(minimal: true): table<string, number>)
---@field getJob fun(): ESXJob
---@field getLoadout fun(minimal: boolean): ESXLoadoutWeapon[]
---@field getName fun(): string
---@field setName fun(newName: string)
---@field setAccountMoney fun(account: string, money: number, reason?: string)
---@field addAccountMoney fun(account: string, money: number, reason?: string)
---@field removeAccountMoney fun(account: string, money: number, reason?: string)
---@field getInventoryItem fun(itemName: string): ESXItem?
---@field addInventoryItem fun(itemName: string, count: number)
---@field removeInventoryItem fun(itemName: string, count: number)
---@field setInventoryItem fun(itemName: string, count: number)
---@field getWeight fun(): number
---@field getMaxWeight fun(): number
---@field canCarryItem fun(itemName: string, count: number): boolean
---@field canSwapItem fun(firstItem: string, firstItemCount: number, testItem: string, testItemCount: number): boolean
---@field setMaxWeight fun(maxWeight: number)
---@field setJob fun(job: string, grade: string)
---@field addWeapon fun(weaponName: string, ammo: number)
---@field addWeaponComponent fun(weaponName: string, weaponComponent: number)
---@field addWeaponAmmo fun(weaponName: string, ammoCount: number)
---@field updateWeaponAmmo fun(weaponName: string, ammoCount: number)
---@field setWeaponTint fun(weaponName: string, weaponTintIndex: number)
---@field getWeaponTint fun(weaponName: string): number
---@field removeWeapon fun(weaponName: string)
---@field removeWeaponComponent fun(weaponName: string, weaponComponent: string)
---@field removeWeaponAmmo fun(weaponName: string, ammoCount: number)
---@field hasWeaponComponent fun(weaponName: string, weaponComponent: string): boolean
---@field hasWeapon fun(weaponName: string): boolean
---@field hasItem fun(item: string): false | ESXItem, number?
---@field getWeapon fun(weaponName: string): number?, ESXConfigWeapon?
---@field showNotification fun(msg: string, type?: 'info' | 'error' | 'success', length?: number)
---@field showAdvancedNotification fun(sender: string, subject: string, msg: string, textureDict: string, iconType: number, flash?: boolean, saveToBrief?: boolean, hudColorIndex?: number)
---@field showHelpNotification fun(msg: string, thisFrame?: boolean, beep?: boolean, duration?: number)
---@field getMeta fun(index: string, subIndex: string | number | table): any
---@field setMeta fun(index: string, value: any, subValue: string | number | table)
---@field clearMeta fun(index: string, subIndex: string | number | table)

---@class ESX
---@field PlayerLoaded boolean
---@field PlayerData ESXPLayerData
---@field Items table<string, ESXItem>
ESX = {};
ESX.UI = {};
ESX.UI.Menu = {};
---@type table<string, { open: ESXMenuTypeCallback; close: ESXMenuTypeCallback }>
ESX.UI.Menu.RegisteredTypes = {};
ESX.Game = {};
ESX.Scaleform = {};
ESX.Scaleform.Utils = {};
ESX.Streaming = {};
ESX.Math = {};
ESX.Table = {};
ESX.OneSync = {};

exports.es_extended = {};

--- `CLIENT`, `SERVER`
---
---@return ESX
function exports.es_extended:getSharedObject() end

--- INTERNAL USE ONLY !!! DO NUT USE
--- Spawns the player with the given skin and coordinates.
---
--- `CLIENT`
---
---@param skin table<string, number>
---@param coords vector3 | vector4 | { x: number, y: number, z: number }
---@param cb fun()
function ESX.SpawnPlayer(skin, coords, cb) end

--- This function checks if the player has loaded in.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/isplayerloaded/)
---
--- `CLIENT`
---
---@return boolean
function ESX.IsPlayerLoaded() end

--- Returns the player's local data.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/getplayerdata/)
---
--- `CLIENT`
---
---@return ESXPLayerData
function ESX.GetPlayerData() end

--- Searches the player's inventory for the given items.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/searchinventory/)
---
--- `CLIENT`
---
---@overload fun(items: string | string[], count: false): table<string, ESXItem>
---@overload fun(items: string | string[], count: true): table<string, number>
function ESX.SearchInventory(items, count) end

--- Sets the player's local data.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/setplayerdata/)
---
--- `CLIENT`
---
---@param key string
---@param val any
function ESX.SetPlayerData(key, val) end

---@class ESXProgressBarAnimation
---@field type 'anim'
---@field dict string
---@field lib string

---@class ESXProgressBarScenario
---@field type 'Scenario'
---@field Scenario string

---@class ESXProgressBarOptions
---@field FreezePlayer? boolean
---@field animation? ESXProgressBarAnimation | ESXProgressBarScenario
---@field onFinish? fun()
---@field onCancel? fun()

--- Displays a progress bar.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/progressbar/)
---
--- `CLIENT`
---
---@param message string
---@param length number
---@param Options? ESXProgressBarOptions
function ESX.Progressbar(message, length, Options) end

--- This function shows a notification to the player.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/shownotification/)
---
--- `CLIENT`
---
---@param message string
---@param notifyType? 'info' | 'success' | 'error'
---@param length? number
function ESX.ShowNotification(message, notifyType, length) end

--- Shows a floating text on screen
---
--- `CLIENT`
---
---@param message string
---@param notifyType? 'info' | 'success' | 'error'
function ESX.TextUI(message, notifyType) end

--- Hides the text ui
---
--- `CLIENT`
---
function ESX.HideUI() end

--- This function shows an advanced notification.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/showadvancednotification/)
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

--- This function shows a help notification with a message. These help notification support displaying button inputs, see [this list](https://pastebin.com/HPg8pYwi)
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/showhelpnotification/)
---
--- `CLIENT`
---
---@param msg string
---@param thisFrame? boolean
---@param beep? boolean
---@param duration? number
function ESX.ShowHelpNotification(msg, thisFrame, beep, duration) end

--- This function shows a help notification with a message. These help notification support displaying button inputs, see [this list](https://pastebin.com/HPg8pYwi)
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/showfloatinghelpnotification/)
---
--- `CLIENT`
---
---@param msg string
---@param coords vector3
function ESX.ShowFloatingHelpNotification(msg, coords) end

--- This function hashes the given string.
---
--- `CLIENT`
---
---@param str string
function ESX.HashString(str) end

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

---@param command_name string
---@param label string
---@param input_group string
---@param key string
---@param on_press fun(source: 0, args: string[], rawCommand: string)
---@param on_release? fun(source: 0, args: string[], rawCommand: string)
function ESX.RegisterInput(command_name, label, input_group, key, on_press, on_release) end

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

---@class ESXMenuElement
---@field label string

---@class ESXMenuData
---@field title string
---@field elements ESXMenuElement[]
---@field align? 'left' | 'top-left' | 'top' | 'top-right' | 'right' | 'bottom-right' | 'bottom' | 'bottom-left' | 'center' | string
---@field type? 'big' | 'default' | string

---@class ESXMenu
---@field type 'menu' | 'dialog' | string
---@field namespace string
---@field resourceName string
---@field name string
---@field data ESXMenuData
---@field submit ESXMenuCallback
---@field cancel? ESXMenuCallback
---@field change? ESXMenuCallback
---@field close fun()
---@field update fun(query: table<string, any>, newData: table<string, any>)
---@field refresh fun()
---@field setElement fun(index: number, key: string, value: any)
---@field setElements fun(newElements: ESXMenuElement[])
---@field setTitle fun(newTitle: string)
---@field removeElement fun(query: table)

---@class ESXMenuCallbackData
---@field _namespace string
---@field _name string
---@field current ESXMenuElement
---@field elements ESXMenuElement[]

---@alias ESXMenuCallback fun(data: ESXMenuCallbackData, menu: ESXMenu)

---@alias ESXMenuType 'menu' | 'dialog' | string

--- Opens a menu.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/ui/menu/open)
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
---@return ESXMenu
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
---@return ESXMenu
function ESX.UI.Menu.GetOpened(menuType, namespace, name) end

--- Returns all open menus.
---
--- `CLIENT`
---
---@return ESXMenu[]
function ESX.UI.Menu.GetOpenedMenus() end

--- Returns whether the specified menu is open.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/ui/menu/isopen)
---
--- `CLIENT`
---
---@param menuType ESXMenuType
---@param namespace string
---@param name string
function ESX.UI.Menu.IsOpen(menuType, namespace, name) end

--- Shows an inventory item notification.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/ui/showinventoryitemnotification)
---
--- `CLIENT`
---
---@param add boolean
---@param item string
---@param count number | string
function ESX.UI.ShowInventoryItemNotification(add, item, count) end

--- This function generates a mugshot of the ped usable in various applications.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/game/getpedmugshot/)
---
--- `CLIENT`
---
---@param ped number
---@param transparent? boolean
---@return number mugshot
---@return string mugshoStr
function ESX.Game.GetPedMugshot(ped, transparent) end

--- Teleports the specified entity to the given coordinates.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/game/teleport/)
---
--- `CLIENT`
---
---@param entity number
---@param coords vector3 | vector4 | { x: number, y: number, z: number; heading?: number }
---@param cb? fun()
function ESX.Game.Teleport(entity, coords, cb) end

--- Spawns an object.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/game/spawnobject/)
---
--- `CLIENT`
---
---@param model string | number
---@param coords vector3 | vector4 | { x: number, y: number, z: number }
---@param cb? fun(object: number)
---@param networked? boolean
function ESX.Game.SpawnObject(model, coords, cb, networked) end

--- This function spawns a local object, which is only visible to the local player and no one else.
---
--- !!! warning This is an async function because it awaits the object model to be streamed.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/game/spawnlocalobject)
---
--- `CLIENT`
---
---@param model string | number
---@param coords vector3 | vector4 | { x: number, y: number, z: number }
---@param cb? fun(object: number)
function ESX.Game.SpawnLocalObject(model, coords, cb) end

--- This function deletes the given vehicle.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/game/deletevehicle)
---
--- `CLIENT`
---
---@param vehicle number
function ESX.Game.DeleteVehicle(vehicle) end

--- This function deletes the given object.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/game/deleteobject)
---
--- `CLIENT`
---
---@param object number
function ESX.Game.DeleteObject(object) end

--- This function spawns a vehicle.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/game/spawnvehicle)
---
--- `CLIENT`
---
---@param vehicleModel string | number
---@param coords vector3 | vector4 | { x: number, y: number, z: number }
---@param heading number
---@param cb? fun(vehicle: number)
---@param networked? boolean
function ESX.Game.SpawnVehicle(vehicleModel, coords, heading, cb, networked) end

--- This function spawns a local vehicle, which is only visible to the local player and no one else.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/game/spawnlocalvehicle)
---
--- `CLIENT`
---
---@param vehicleModel string | number
---@param coords vector3 | vector4 | { x: number, y: number, z: number }
---@param heading number
---@param cb? fun(vehicle: number)
function ESX.Game.SpawnLocalVehicle(vehicleModel, coords, heading, cb) end

--- Returns whether the specified vehicle is empty.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/game/isvehicleempty)
---
--- `CLIENT`
---
---@param vehicle number entity
function ESX.Game.IsVehicleEmpty(vehicle) end

--- This function gets all objects found in the game world.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/game/getobjects)
---
--- `CLIENT`
---
---@return number[]
function ESX.Game.GetObjects() end

--- This function gets all peds found in the game world.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/game/getpeds)
---
--- `CLIENT`
---
---@param onlyOtherPeds? boolean
---@return number[]
function ESX.Game.GetPeds(onlyOtherPeds) end

--- This function gets all vehicles found in the game world.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/game/getvehicles)
---
--- `CLIENT`
---
---@return number[]
function ESX.Game.GetVehicles() end

--- This function is used to get all the active players.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/game/getplayers)
---
--- `CLIENT`
---
---@param onlyOtherPlayers? boolean
---@param returnKeyValue? boolean
---@param returnPeds? boolean
---@return table<number, number>
function ESX.Game.GetPlayers(onlyOtherPlayers, returnKeyValue, returnPeds) end

--- This function returns the closest object handle, and distance to the object.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/game/getclosestobject)
---
--- `CLIENT`
---
---@param coords vector3 | vector4 | { x: number, y: number, z: number }
---@param modelFilter? table<number, true>
---@return number object
---@return number distance
function ESX.Game.GetClosestObject(coords, modelFilter) end

--- This function returns the closest ped handle, and distance to the ped.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/game/getclosestped)
---
--- `CLIENT`
---
---@param coords? vector3 | vector4 | { x: number, y: number, z: number }
---@param modelFilter? table<number, true>
---@return number ped
---@return number distance
function ESX.Game.GetClosestPed(coords, modelFilter) end

--- This function gets the closest player client id, and distance to the player.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/game/getclosestplayer)
---
--- `CLIENT`
---
---@param coords? vector3 | vector4 | { x: number, y: number, z: number }
---@return number player
---@return number distance
function ESX.Game.GetClosestPlayer(coords) end

--- This function gets the closest vehicle.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/game/getclosestvehicle)
---
--- `CLIENT`
---
---@param coords? vector3 | vector4 | { x: number, y: number, z: number }
---@param modelFilter? table<number, true>
---@return number vehicle
---@return number distance
function ESX.Game.GetClosestVehicle(coords, modelFilter) end

--- This function gets all players within the max distance of a coord.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/game/getplayersinarea)
---
--- `CLIENT`
---
---@param coords? vector3 | vector4 | { x: number, y: number, z: number }
---@param maxDistance number
---@return number[]
function ESX.Game.GetPlayersInArea(coords, maxDistance) end

--- This function gets all vehicles within the max distance of a coord.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/game/getvehiclesinarea)
---
--- `CLIENT`
---
---@param coords? vector3 | vector4 | { x: number, y: number, z: number }
---@param maxDistance number
---@return number[]
function ESX.Game.GetVehiclesInArea(coords, maxDistance) end

--- This function returns the closest Entity handle, and distance to the Entity.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/game/getclosestEntity)
---
--- `CLIENT`
---
---@param entities number[]
---@param isPlayerEntities? boolean
---@param coords? vector3 | vector4 | { x: number, y: number, z: number }
---@param modelFilter? table<number, true>
---@return number entity
---@return number distance
function ESX.Game.GetClosestEntity(entities, isPlayerEntities, coords, modelFilter) end

--- This function gets the closest vehicle in the player's direction within 5 units, utilizes ray-casts.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/game/getvehicleindirection)
---
--- `CLIENT`
---
---@return boolean?, vector3?
function ESX.Game.GetVehicleInDirection() end

---@class ESXVehicleProperties
---@field model number
---@field doorsBroken boolean[]
---@field windowsBroken boolean[]
---@field tyreBurst boolean[]
---@field tyresCanBurst boolean
---@field plate string
---@field plateIndex number
---@field bodyHealth number
---@field engineHealth number
---@field tankHealth number
---@field fuelLevel number
---@field dirtLevel number
---@field color1 number
---@field color2 number
---@field customPrimaryColor [number, number, number]|nil
---@field customSecondaryColor [number, number, number]|nil
---@field pearlescentColor number
---@field wheelColor number
---@field dashboardColor number
---@field interiorColor number
---@field wheels number
---@field windowTint number
---@field xenonColor number
---@field customXenonColor number|nil
---@field neonEnabled boolean[]
---@field neonColor [number, number, number]
---@field extras table<string, boolean>
---@field tyreSmokeColor [number, number, number]
---@field modSpoilers number
---@field modFrontBumper number
---@field modRearBumper number
---@field modSideSkirt number
---@field modExhaust number
---@field modFrame number
---@field modGrille number
---@field modHood number
---@field modFender number
---@field modRightFender number
---@field modRoof number
---@field modRoofLivery number
---@field modEngine number
---@field modBrakes number
---@field modTransmission number
---@field modHorns number
---@field modSuspension number
---@field modArmor number
---@field modTurbo boolean
---@field modSmokeEnabled boolean
---@field modXenon boolean
---@field modFrontWheels number
---@field modCustomFrontWheels boolean
---@field modBackWheels number
---@field modCustomBackWheels boolean
---@field modPlateHolder number
---@field modVanityPlate number
---@field modTrimA number
---@field modOrnaments number
---@field modDashboard number
---@field modDial number
---@field modDoorSpeaker number
---@field modSeats number
---@field modSteeringWheel number
---@field modShifterLeavers number
---@field modAPlate number
---@field modSpeakers number
---@field modTrunk number
---@field modHydrolic number
---@field modEngineBlock number
---@field modAirFilter number
---@field modStruts number
---@field modArchCover number
---@field modAerials number
---@field modTrimB number
---@field modTank number
---@field modWindows number
---@field modLivery number
---@field modLightbar number

---@class ESXVehicleOptionalProperties
---@field model? number
---@field doorsBroken? boolean[]
---@field windowsBroken? boolean[]
---@field tyreBurst? boolean[]
---@field tyresCanBurst? boolean
---@field plate? string
---@field plateIndex? number
---@field bodyHealth? number
---@field engineHealth? number
---@field tankHealth? number
---@field fuelLevel? number
---@field dirtLevel? number
---@field color1? number
---@field color2? number
---@field customPrimaryColor? [number, number, number]|nil
---@field customSecondaryColor? [number, number, number]|nil
---@field pearlescentColor? number
---@field wheelColor? number
---@field dashboardColor? number
---@field interiorColor? number
---@field wheels? number
---@field windowTint? number
---@field xenonColor? number
---@field customXenonColor? number|nil
---@field neonEnabled? boolean[]
---@field neonColor? [number, number, number]
---@field extras? table<string, boolean>
---@field tyreSmokeColor? [number, number, number]
---@field modSpoilers? number
---@field modFrontBumper? number
---@field modRearBumper? number
---@field modSideSkirt? number
---@field modExhaust? number
---@field modFrame? number
---@field modGrille? number
---@field modHood? number
---@field modFender? number
---@field modRightFender? number
---@field modRoof? number
---@field modRoofLivery? number
---@field modEngine? number
---@field modBrakes? number
---@field modTransmission? number
---@field modHorns? number
---@field modSuspension? number
---@field modArmor? number
---@field modTurbo? boolean
---@field modSmokeEnabled? boolean
---@field modXenon? boolean
---@field modFrontWheels? number
---@field modCustomFrontWheels? boolean
---@field modBackWheels? number
---@field modCustomBackWheels? boolean
---@field modPlateHolder? number
---@field modVanityPlate? number
---@field modTrimA? number
---@field modOrnaments? number
---@field modDashboard? number
---@field modDial? number
---@field modDoorSpeaker? number
---@field modSeats? number
---@field modSteeringWheel? number
---@field modShifterLeavers? number
---@field modAPlate? number
---@field modSpeakers? number
---@field modTrunk? number
---@field modHydrolic? number
---@field modEngineBlock? number
---@field modAirFilter? number
---@field modStruts? number
---@field modArchCover? number
---@field modAerials? number
---@field modTrimB? number
---@field modTank? number
---@field modWindows? number
---@field modLivery? number
---@field modLightbar? number

--- This function gets an vehicle's properties.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/game/getvehicleproperties)
---
--- `CLIENT`
---
---@param vehicle number
---@return ESXVehicleProperties
function ESX.Game.GetVehicleProperties(vehicle) end

--- This function sets an vehicle's properties.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/game/setvehicleproperties)
---
--- `CLIENT`
---
---@param vehicle number
---@param properties ESXVehicleOptionalProperties
function ESX.Game.SetVehicleProperties(vehicle, properties) end

--- This function draws 3D text on the specified coords. Must be drawn every frame, ideally in a loop. `size` and `font` arguments are optional.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/game/utils/drawtext3d)
---
--- `CLIENT`
---
---@param coords vector3 | vector4 | { x: number, y: number, z: number }
---@param text string
---@param size? number
---@param font? number
function ESX.Game.Utils.DrawText3D(coords, text, size, font) end

--- Returns the account of the specified name, if it exists.
---
--- `CLIENT`
---
---@param account string
---@return ESXPlayerAccount?
function ESX.GetAccount(account) end

--- Shows a context menu with the player's inventory.
---
--- `CLIENT`
---
function ESX.ShowInventory() end

--- This function triggers a server callback. See [ESX.RegisterServerCallback](https://documentation.esx-framework.org/legacy/Server/Functions/registerservercallback/) on registering server callbacks.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/triggerservercallback/)
---
--- `CLIENT`
---
---@param eventName string
---@param callback fun(...: any)
---@param ... any
function ESX.TriggerServerCallback(eventName, callback, ...) end

--- This function registers a server callback, which is used for sending Server Data, to a client.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Server/Functions/registerservercallback/)
---
--- `SERVER`
---
---@param eventName string
---@param callback fun(source: number, cb: fun(...: any), ...: any)
function ESX.RegisterServerCallback(eventName, callback) end

--- This function registers a client callback, which is used for sending Client Data, to the server.
---
--- `CLIENT`
---
---@param eventName string
---@param callback fun(cb: fun(...: any), ...: any)
function ESX.RegisterClientCallback(eventName, callback) end

--- This function triggers a client callback.
---
--- `SERVER`
---
---@param player number
---@param eventName string
---@param callback fun(...: any)
---@param ... any
function ESX.TriggerClientCallback(player, eventName, callback, ...) end

--- This function shows a freemode message.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/scaleform/showfreemodemessage/)
---
--- `CLIENT`
---
---@param title string
---@param msg string
---@param sec number seconds
function ESX.Scaleform.ShowFreemodeMessage(title, msg, sec) end

--- This function shows a breaking news message.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/scaleform/showbreakingnews/)
---
--- `CLIENT`
---
---@param title string
---@param msg string
---@param bottom string bottom text
---@param sec number seconds
function ESX.Scaleform.ShowBreakingNews(title, msg, bottom, sec) end

--- This function shows a popup warning.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/scaleform/showpopupmessage/)
---
--- `CLIENT`
---
---@param title string
---@param msg string
---@param bottom string bottom text
---@param sec number seconds
function ESX.Scaleform.ShowPopupWarning(title, msg, bottom, sec) end

--- This function shows a traffic movie.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/scaleform/showtrafficmovie/)
---
--- `CLIENT`
---
---@param sec number seconds
function ESX.Scaleform.ShowTrafficMovie(sec) end

--- This function requests a scaleform movie.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/scaleform/utils/requestscaleformmovie/)
---
--- `CLIENT`
---
---@param movie string
---@return number
function ESX.Scaleform.Utils.RequestScaleformMovie(movie) end

--- This function requests a model.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/streaming/requestmodel/)
---
--- `CLIENT`
---
---@param modelHash number | string
---@param cb fun()
function ESX.Streaming.RequestModel(modelHash, cb) end

--- This function requests a streamed texture dict.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/streaming/requeststreamedtexturedict/)
---
--- `CLIENT`
---
---@param textureDict string
---@param cb fun()
function ESX.Streaming.RequestStreamedTextureDict(textureDict, cb) end

--- This function requests a named ptfx asset.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/streaming/requestnamedptfxasset/)
---
--- `CLIENT`
---
---@param assetName string
---@param cb fun()
function ESX.Streaming.RequestNamedPtfxAsset(assetName, cb) end

--- This function requests an anim set.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/streaming/requestanimset/)
---
--- `CLIENT`
---
---@param animSet string
---@param cb fun()
function ESX.Streaming.RequestAnimSet(animSet, cb) end

--- This function requests an anim dict.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/streaming/requestanimdict/)
---
--- `CLIENT`
---
---@param animDict string
---@param cb fun()
function ESX.Streaming.RequestAnimDict(animDict, cb) end

--- This function requests a weapon asset.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Client/functions/streaming/requestweaponasset/)
---
--- `CLIENT`
---
---@param weaponHash string | number
---@param cb fun()
function ESX.Streaming.RequestWeaponAsset(weaponHash, cb) end

--- This function returns a random string of the specified length.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Common/functions/getrandomstring/)
---
--- `CLIENT`, `SERVER`
---
---@param length number
---@return string
function ESX.GetRandomString(length) end

--- Returns the config.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Common/functions/getconfig)
---
--- `CLIENT`, `SERVER`
---
---@return ESXConfig
function ESX.GetConfig() end

--- Returns the weapon of the specified name.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Common/functions/getweapon/)
---
--- `CLIENT`, `SERVER`
---
---@param weaponName string
---@return number
---@return ESXConfigWeapon
function ESX.GetWeapon(weaponName) end

--- Returns the weapon of the specified hash.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Common/functions/getweaponfromhash/)
---
--- `CLIENT`, `SERVER`
---
---@param weaponHash string | number
---@return ESXConfigWeapon
function ESX.GetWeaponFromHash(weaponHash) end

--- Returns the weapons config.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Common/functions/getweaponlist/)
---
--- `CLIENT`, `SERVER`
---
---@param byHash? boolean
---@return ESXConfigWeapon[]
function ESX.GetWeaponList(byHash) end

--- Returns the label of the specified weapon.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Common/functions/getweaponlabel/)
---
--- `CLIENT`, `SERVER`
---
---@param weaponName string
---@return string
function ESX.GetWeaponLabel(weaponName) end

--- Returns the given component of the given weapon.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Common/functions/getweaponcomponent/)
---
--- `CLIENT`, `SERVER`
---
---@param weaponName string
---@param weaponComponent string
---@return ESXConfigWeaponComponent
function ESX.GetWeaponComponent(weaponName, weaponComponent) end

--- Returns a string representation of the given table.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Common/functions/dumptable/)
---
--- `CLIENT`, `SERVER`
---
---@param table table
---@param nb? number
---@return string
function ESX.DumpTable(table, nb) end

--- Rounds the given value to the specified number of decimal places.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Common/functions/round/)
---
--- `CLIENT`, `SERVER`
---
---@param value number
---@param numDecimalPlaces? number
---@return number
function ESX.Round(value, numDecimalPlaces) end

--- Validates the given value against the specified types.
---
--- `CLIENT`, `SERVER`
---
---@param value any
---@param ... string[]
---@return boolean
---@return string? errorMessage
function ESX.ValidateType(value, ...) end

--- Asserts the given value against the specified types.
---
--- `CLIENT`, `SERVER`
---
---@param value any
---@param ... string[]
---@return boolean
function ESX.AssertType(value, ...) end

--- Rounds the given value to the specified number of decimal places.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Common/functions/math/round/)
---
--- `CLIENT`, `SERVER`
---
---@param value number
---@param numDecimalPlaces? number
---@return number
function ESX.Math.Round(value, numDecimalPlaces) end

--- Groups the digits of the given value.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Common/functions/math/groupdigits/)
---
--- `CLIENT`, `SERVER`
---
---@param value string | number
---@return string
function ESX.Math.GroupDigits(value) end

--- Trims the given value.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Common/functions/math/trim/)
---
--- `CLIENT`, `SERVER`
---
---@param value string | number
---@return string?
function ESX.Math.Trim(value) end

--- Returns a random number between the given min and max.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Common/functions/math/random/)
---
--- `CLIENT`, `SERVER`
---
---@param min number
---@param max number
---@return number
function ESX.Math.Random(min, max) end

--- Returns the size of the given table.
---
--- `CLIENT`, `SERVER`
---
---@param t table
---@return number
function ESX.Table.SizeOf(t) end

--- Returns a set of the given table.
---
--- `CLIENT`, `SERVER`
---
---@param t string[] | number[]
---@return table<string, true>
function ESX.Table.Set(t) end

--- Returns the index of the given value in the given table.
---
--- `CLIENT`, `SERVER`
---
---@param t any[] | table<number, any>
---@param value any
---@return number
function ESX.Table.IndexOf(t, value) end

--- Returns the last index of the given value in the given table.
---
--- `CLIENT`, `SERVER`
---
---@param t any[] | table<number, any>
---@param value any
---@return number
function ESX.Table.LastIndexOf(t, value) end

--- Returns the first value in the given table that satisfies the given callback.
---
--- `CLIENT`, `SERVER`
---
---@param t any[] | table<number, any>
---@param cb fun(value: any): boolean?
---@return any?
function ESX.Table.Find(t, cb) end

--- Returns the index of the first value in the given table that satisfies the given callback.
---
--- `CLIENT`, `SERVER`
---
---@param t any[] | table<number, any>
---@param cb fun(value: any): boolean?
---@return number
function ESX.Table.FindIndex(t, cb) end

--- Returns the values in the given table that satisfy the given callback.
---
--- `CLIENT`, `SERVER`
---
---@param t any[] | table<number, any>
---@param cb fun(value: any): boolean?
---@return any[]
function ESX.Table.Filter(t, cb) end

--- Returns a new table with the results of calling the given callback on each value in the given table.
---
--- `CLIENT`, `SERVER`
---
---@param t any[] | table<number, any>
---@param cb fun(value: any, index: number): any
---@return table
function ESX.Table.Map(t, cb) end

--- Returns a new table with the values in the given table in reverse order.
---
--- `CLIENT`, `SERVER`
---
---@generic T:table<number, any>
---@param t T
---@return T
function ESX.Table.Reverse(t) end

--- Returns a deep copy of the given table.
---
--- `CLIENT`, `SERVER`
---
---@generic T:table
---@param t T
---@return T
function ESX.Table.Clone(t) end

--- Returns a new table that is the concatenation of the given tables.
---
--- `CLIENT`, `SERVER`
---
---@generic T, U: table
---@param t1 T The first table to merge into.
---@param t2 T The first table to merge into.
---@return T|U
function ESX.Table.Concat(t1, t2) end

--- Returns a string representation of the given table.
---
--- `CLIENT`, `SERVER`
---
---@param t any[] | table<number, any>
---@param sep string
---@return string
function ESX.Table.Join(t, sep) end

--- Returns whether the given table contains the given value.
---
--- `CLIENT`, `SERVER`
---
---@param tab table
---@param val any
---@return boolean
function ESX.Table.TableContains(tab, val) end

--- Returns a new iterator function that returns the values in the given table in order.
---
--- `CLIENT`, `SERVER`
---
---@param t table
---@param order boolean
---@return fun(): string | number, any
function ESX.Table.Sort(t, order) end

--- Sets a timeout that will call the given callback after the specified number of milliseconds.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Server/Functions/setimeout/)
---
--- `CLIENT`, `SERVER`
---
---@param msec number
---@param cb fun()
---@return number
function ESX.SetTimeout(msec, cb) end

--- Clears the timeout with the given id.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Server/Functions/cleartimeout/)
---
--- `CLIENT`, `SERVER`
---
---@param id number
function ESX.ClearTimeout(id) end

--- This function writes a trace if debugging is enabled in the configuration file.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Server/Functions/trace/)
---
--- `CLIENT`, `SERVER`
---
---@param msg string
function ESX.Trace(msg) end

---@param eventName string
---@param playerIds table|number
---@param ... any
function ESX.TriggerClientEvent(eventName, playerIds, ...) end

---@class ESXCommandArgument
---@field name string
---@field help string
---@field type 'string' | 'number' | 'player' | 'weapon' | 'item' | 'coordinate'

---@class ESXCommandSuggestion
---@field help string
---@field validate boolean
---@field arguments ESXCommandArgument[]

--- Registers a command.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Server/Functions/registercommand/)
---
--- `SERVER`
---
---@param name string | string[]
---@param group string
---@param cb fun(xPlayer: xPlayer | false, args: table<string, string | number | xPlayer>, error: fun(message: string))
---@param allowConsole? boolean
---@param suggestion? ESXCommandSuggestion[]
function ESX.RegisterCommand(name, group, cb, allowConsole, suggestion) end

--- Returns a list of all players.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Server/Functions/getplayers/)
---
--- `SERVER`
---
---@return string[]
function ESX.GetPlayers() end

--- Returns a list of players that match the given key and value.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Server/Functions/getextendedplayers/)
---
--- `SERVER`
---
---@param key string
---@param val any
---@return xPlayer[]
function ESX.GetExtendedPlayers(key, val) end

--- Returns the number of players that match the given key and value.
---
--- `SERVER`
---
---@param key string
---@param val any
---@return number
function ESX.GetNumPlayers(key, val) end

--- Returns the player with the given id.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Server/Functions/getplayerfromid/)
---
--- `SERVER`
---
---@param source number
---@return xPlayer
function ESX.GetPlayerFromId(source) end

--- Returns the player with the given identifier.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Server/Functions/getplayerfromidentifier/)
---
--- `SERVER`
---
---@param identifier string
---@return xPlayer
function ESX.GetPlayerFromIdentifier(identifier) end

--- Returns the identifier of the given player.
---
--- `SERVER`
---
---@param playerId number | string
---@return string
function ESX.GetIdentifier(playerId) end

--- Returns the type of the given vehicle.
---
--- `SERVER`
---
---@param model string | number
---@param player number
---@param cb fun(type: string)
function ESX.GetVehicleType(model, player, cb) end

--- Logs a message to the discord log.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Server/Functions/discordlog/)
---
--- `SERVER`
---
---@param name? string
---@param title string
---@param color? string
---@param message? string
function ESX.DiscordLog(name, title, color, message) end

--- Logs a message to the discord log with fields.
---
--- `SERVER`
---
---@param name? string
---@param title string
---@param color? string
---@param fields? { name: string, value: string, inline?: boolean }[]
function ESX.DiscordLogFields(name, title, color, fields) end

--- Refreshes the jobs.
---
function ESX.RefreshJobs() end

--- Registers an item as usable.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Server/Functions/registerusableitem/)
---
--- `SERVER`
---
---@generic Item: string
---@param item Item
---@param cb fun(source: number, item: Item, ...: any)
function ESX.RegisterUsableItem(item, cb) end

--- Registers a player function override.
---
--- `SERVER`
---
---@param index string
---@param overrides table<string, fun(self: self | any)>
function ESX.RegisterPlayerFunctionOverrides(index, overrides) end

--- Sets the player function override.
---
--- `SERVER`
---
---@param index string
function ESX.SetPlayerFunctionOverride(index) end

--- Returns the label of the given item.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Server/Functions/getitemlabel/)
---
--- `SERVER`
---
---@param item string
function ESX.GetItemLabel(item) end

--- Returns the jobs.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Server/Functions/getjobs)
---
--- `SERVER`
---
---@return table<string, ESXJob>
function ESX.GetJobs() end

--- Returns the usable items.
---
--- `SERVER`
---
---@return table<string, true>
function ESX.GetUsableItems() end

--- Creates a pickup.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Server/Functions/createpickup/)
---
--- `SERVER`
---
---@param itemType 'item_weapon' | 'item_standart' | 'item_ammo' | 'item_account' | string
---@param name string
---@param count number
---@param label string
---@param playerId string
---@param components table<string, number>
---@param tintIndex number
---@param coords vector3 | vector4 | { x: number, y: number, z: number }
function ESX.CreatePickup(itemType, name, count, label, playerId, components, tintIndex, coords) end

--- Returns whether the given job exists.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Server/Functions/doesjobexist/)
---
--- `SERVER`
---
---@param job string
---@param grade? string
---@return boolean
function ESX.DoesJobExist(job, grade) end

--- Returns the players in the given area.
---
--- `SERVER`
---
---@param source vector3|number playerId or vector3 coordinates
---@param maxDistance number
---@param ignore? table<number, true>
---@return { id: number, ped: number, coords: vector3, dist: number }[]
function ESX.OneSync.GetPlayersInArea(source, maxDistance, ignore) end

--- Returns the closest player in the given area.
---
--- `SERVER`
---
---@param source vector3|number playerId or vector3 coordinates
---@param maxDistance number
---@param ignore? table<number, true>
---@return { id: number, ped: number, coords: vector3, dist: number }
function ESX.OneSync.GetClosestPlayer(source, maxDistance, ignore) end

--- Spawns a vehicle.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Server/OneSync/spawnvehicle)
---
--- `SERVER`
---
---@param model number | string
---@param coords vector3 | { x: number, y: number, z: number }
---@param heading number
---@param properties ESXVehicleOptionalProperties
---@param cb fun(netId: number)
function ESX.OneSync.SpawnVehicle(model, coords, heading, properties, cb) end

--- Spawns an object.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Server/OneSync/spawnobject)
---
--- `SERVER`
---
---@param model number | string
---@param coords vector3 | { x: number, y: number, z: number }
---@param heading number
---@param cb fun(netId: number)
function ESX.OneSync.SpawnObject(model, coords, heading, cb) end

--- Spawns a ped.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Server/OneSync/spawnped)
---
--- `SERVER`
---
---@param model number | string
---@param coords vector3 | { x: number, y: number, z: number }
---@param heading number
---@param cb fun(netId: number)
function ESX.OneSync.SpawnPed(model, coords, heading, cb) end

--- Spawns a ped in a vehicle.
---
--- [View documentation](https://documentation.esx-framework.org/legacy/Server/OneSync/spawnpedinvehicle)
---
--- `SERVER`
---
---@param model number | string
---@param coords vector3 | { x: number, y: number, z: number }
---@param heading number
---@param cb fun(netId: number)
function ESX.OneSync.SpawnPedInVehicle(model, coords, heading, cb) end

--- Returns the peds in the given area.
---
--- `SERVER`
---
---@param coords vector3
---@param maxDistance number
---@param modelFilter table<number, true>
---@return number[]
function ESX.OneSync.GetPedsInArea(coords, maxDistance, modelFilter) end

--- Returns the objects in the given area.
---
--- `SERVER`
---
---@param coords vector3
---@param maxDistance number
---@param modelFilter table<number, true>
---@return number[]
function ESX.OneSync.GetObjectsInArea(coords, maxDistance, modelFilter) end

--- Returns the vehicles in the given area.
---
--- `SERVER`
---
---@param coords vector3
---@param maxDistance number
---@param modelFilter table<number, true>
---@return number[]
function ESX.OneSync.GetVehiclesInArea(coords, maxDistance, modelFilter) end

--- Returns the closest ped in the given area.
---
--- `SERVER`
---
---@param coords vector3
---@param modelFilter table<number, true>
---@return number entityId, number distance, vector3 coords
function ESX.OneSync.GetClosestPed(coords, modelFilter) end

--- Returns the closest object in the given area.
---
--- `SERVER`
---
---@param coords vector3
---@param modelFilter table<number, true>
---@return number entityId, number distance, vector3 coords
function ESX.OneSync.GetClosestObject(coords, modelFilter) end

--- Returns the closest vehicle in the given area.
---
--- `SERVER`
---
---@param coords vector3
---@param modelFilter table<number, true>
---@return number entityId, number distance, vector3 coords
function ESX.OneSync.GetClosestVehicle(coords, modelFilter) end

--- Creates a job.
---
--- `SERVER`
---
--- @param name string
--- @param label string
--- @param grades ESXJobGrade[]
function ESX.CreateJob(name, label, grades) end
