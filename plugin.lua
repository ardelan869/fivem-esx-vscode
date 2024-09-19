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

--- INTERNAL USE ONLY !!! DO NUT USE
---@param skin table<string, number>
---@param coords vector3 | vector4 | { x: number, y: number, z: number }
---@param cb fun()
function ESX.SpawnPlayer(skin, coords, cb) end

---@return boolean
function ESX.IsPlayerLoaded() end

---@return ESXPLayerData
function ESX.GetPlayerData() end

---@overload fun(items: string | string[], count: false): table<string, ESXItem>
---@overload fun(items: string | string[], count: true): table<string, number>
function ESX.SearchInventoryItems(items, count) end

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

---@param message string
---@param length number
---@param Options? ESXProgressBarOptions
function ESX.Progressbar(message, length, Options) end

---@param message string
---@param notifyType? 'info' | 'success' | 'error'
---@param length? number
function ESX.ShowNotification(message, notifyType, length) end

---@param message string
---@param notifyType? 'info' | 'success' | 'error'
function ESX.TextUI(message, notifyType) end

function ESX.HideUI() end

---@param sender string
---@param subject string
---@param msg string
---@param textureDict string
---@param iconType number
---@param flash? boolean
---@param saveToBrief? boolean
---@param hudColorIndex? number
function ESX.ShowAdvancedNotification(sender, subject, msg, textureDict, iconType, flash, saveToBrief, hudColorIndex) end

---@param msg string
---@param thisFrame? boolean
---@param beep? boolean
---@param duration? number
function ESX.ShowHelpNotification(msg, thisFrame, beep, duration) end

---@param msg string
---@param coords vector3
function ESX.ShowFloatingHelpNotification(msg, coords) end

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

---@param position ESXContextMenuPositions
---@param elements ESXContextElement[]
---@param onSelect fun(menu: ESXContextMenu, element: ESXContextElement)
---@param onClose? fun(menu: ESXContextMenu)
---@param canClose? boolean
function ESX.OpenContext(position, elements, onSelect, onClose, canClose) end

--- Opens the context, but does not focus the nui
---@param position ESXContextMenuPositions
---@param elements ESXContextElement[]
---@param onSelect fun(menu: ESXContextMenu, element: ESXContextElement)
---@param onClose? fun(menu: ESXContextMenu)
---@param canClose? boolean
function ESX.PreviewContext(position, elements, onSelect, onClose, canClose) end

--- Closes the current context menu
function ESX.CloseContext() end

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

---@param menuType string
---@param open ESXMenuTypeCallback
---@param close ESXMenuTypeCallback
function ESX.UI.Menu.RegisterType(menuType, open, close) end

---@alias ESXMenuCallback fun()

---@alias ESXMenuType 'menu' | 'dialog' | string

---@class ESXMenuData
---@field title string

---@class ESXMenuElement
---@field label string

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

---@class ESXMenuDefaultData:ESXMenuData
---@field elements ESXMenuElement[]
---@field align? 'left' | 'top-left' | 'top' | 'top-right' | 'right' | 'bottom-right' | 'bottom' | 'bottom-left' | 'center' | string

---@class ESXMenuDialogData:ESXMenuData
---@field type? 'big' | 'default' | string

---@overload fun(menuType: 'default', namespace: string, name: string, data: ESXMenuDefaultData, submit: ESXMenuCallback, cancel?: ESXMenuCallback, change?: ESXMenuCallback, close?: ESXMenuCallback)
---@overload fun(menuType: 'dialog', namespace: string, name: string, data: ESXMenuDialogData, submit: ESXMenuCallback, cancel?: ESXMenuCallback, change?: ESXMenuCallback, close?: ESXMenuCallback)
---@overload fun(menuType: ESXMenuType, namespace: string, name: string, data: ESXMenuData, submit: ESXMenuCallback, cancel?: ESXMenuCallback, change?: ESXMenuCallback, close?: ESXMenuCallback)
---@return ESXMenu
function ESX.UI.Menu.Open(menuType, namespace, name, data, submit, cancel, change, close) end

---@param menuType ESXMenuType
---@param namespace string
---@param name string
function ESX.UI.Menu.Close(menuType, namespace, name) end

function ESX.UI.Menu.CloseAll() end

---@param menuType ESXMenuType
---@param namespace string
---@param name string
---@return ESXMenu
function ESX.UI.Menu.GetOpened(menuType, namespace, name) end

---@return ESXMenu[]
function ESX.UI.Menu.GetOpenedMenus() end

---@param menuType ESXMenuType
---@param namespace string
---@param name string
function ESX.UI.Menu.IsOpen(menuType, namespace, name) end

---@param add boolean
---@param item string
---@param count number | string
function ESX.UI.ShowInventoryItemNotification(add, item, count) end

---@param ped number
---@param transparent? boolean
---@return number
---@return string
function ESX.Game.GetPedMugshot(ped, transparent) end

---@param entity number
---@param coords vector3 | vector4 | { x: number, y: number, z: number; heading?: number }
---@param cb? fun()
function ESX.Game.Teleport(entity, coords, cb) end

---@param model string | number
---@param coords vector3 | vector4 | { x: number, y: number, z: number }
---@param cb? fun(object: number)
---@param networked? boolean
function ESX.Game.SpawnObject(model, coords, cb, networked) end

---@param model string | number
---@param coords vector3 | vector4 | { x: number, y: number, z: number }
---@param cb? fun(object: number)
function ESX.Game.SpawnLocalObject(model, coords, cb) end

---@param vehicle number
function ESX.Game.DeleteVehicle(vehicle) end

---@param object number
function ESX.Game.DeleteObject(object) end

---@param vehicleModel string | number
---@param coords vector3 | vector4 | { x: number, y: number, z: number }
---@param heading number
---@param cb? fun(vehicle: number)
---@param networked? boolean
function ESX.Game.SpawnVehicle(vehicleModel, coords, heading, cb, networked) end

---@param vehicleModel string | number
---@param coords vector3 | vector4 | { x: number, y: number, z: number }
---@param heading number
---@param cb? fun(vehicle: number)
function ESX.Game.SpawnLocalVehicle(vehicleModel, coords, heading, cb) end

---@return number[]
function ESX.Game.GetObjects() end

---@param onlyOtherPeds? boolean
---@return number[]
function ESX.Game.GetPeds(onlyOtherPeds) end

---@return number[]
function ESX.Game.GetVehicles() end

---@param onlyOtherPlayers? boolean
---@param returnKeyValue? boolean
---@param returnPeds? boolean
---@return table<number, number>
function ESX.Game.GetPlayers(onlyOtherPlayers, returnKeyValue, returnPeds) end

---@param coords vector3 | vector4 | { x: number, y: number, z: number }
---@param modelFilter? table<string, true>
---@return number object
---@return number distance
function ESX.Game.GetClosestObject(coords, modelFilter) end

---@param coords? vector3 | vector4 | { x: number, y: number, z: number }
---@param modelFilter? table<string, true>
---@return number ped
---@return number distance
function ESX.Game.GetClosestPed(coords, modelFilter) end

---@param coords? vector3 | vector4 | { x: number, y: number, z: number }
---@return number player
---@return number distance
function ESX.Game.GetClosestPlayer(coords) end

---@param coords? vector3 | vector4 | { x: number, y: number, z: number }
---@param modelFilter? table<string, true>
---@return number vehicle
---@return number distance
function ESX.Game.GetClosestVehicle(coords, modelFilter) end

---@param coords? vector3 | vector4 | { x: number, y: number, z: number }
---@param maxDistance number
---@return number[]
function ESX.Game.GetPlayersInArea(coords, maxDistance) end

---@param coords? vector3 | vector4 | { x: number, y: number, z: number }
---@param maxDistance number
---@return number[]
function ESX.Game.GetVehiclesInArea(coords, maxDistance) end

---@param entities number[]
---@param isPlayerEntities? boolean
---@param coords? vector3 | vector4 | { x: number, y: number, z: number }
---@param modelFilter? table<string, true>
---@return number entity
---@return number distance
function ESX.Game.GetClosestEntity(entities, isPlayerEntities, coords, modelFilter) end

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

---@param vehicle number
---@return ESXVehicleProperties
function ESX.Game.GetVehicleProperties(vehicle) end

---@param vehicle number
---@param properties ESXVehicleOptionalProperties
function ESX.Game.GetVehicleProperties(vehicle, properties) end

---@param coords vector3 | vector4 | { x: number, y: number, z: number }
---@param text string
---@param size? number
---@param font? number
function ESX.Game.Utils.DrawText3D(coords, text, size, font) end

---@param account string
---@return ESXPlayerAccount
function ESX.GetAccount(account) end

function ESX.ShowInventory() end

---@param eventName string
---@param callback fun(...: any)
---@param ... any
function ESX.TriggerServerCallback(eventName, callback, ...) end

---@param eventName string
---@param callback fun(source: number, cb: fun(...: any), ...: any)
function ESX.RegisterServerCallback(eventName, callback)
end

---@param eventName string
---@param callback fun(cb: fun(...: any), ...: any)
function ESX.RegisterClientCallback(eventName, callback) end

---@param player number
---@param eventName string
---@param callback fun(...: any)
---@param ... any
function ESX.TriggerClientCallback(player, eventName, callback, ...) end

---@param title string
---@param msg string
---@param sec number seconds
function ESX.Scaleform.ShowFreemodeMessage(title, msg, sec) end

---@param title string
---@param msg string
---@param bottom string bottom text
---@param sec number seconds
function ESX.Scaleform.ShowBreakingNews(title, msg, bottom, sec) end

---@param title string
---@param msg string
---@param bottom string bottom text
---@param sec number seconds
function ESX.Scaleform.ShowPopupWarning(title, msg, bottom, sec) end

---@param sec number seconds
function ESX.Scaleform.ShowTrafficMovie(sec) end

---@param movie string
---@return number
function ESX.Scaleform.Utils.RequestScaleformMovie(movie) end

---@param modelHash number | string
---@param cb fun()
function ESX.Streaming.RequestModel(modelHash, cb) end

---@param textureDict string
---@param cb fun()
function ESX.Streaming.RequestStreamedTextureDict(textureDict, cb) end

---@param assetName string
---@param cb fun()
function ESX.Streaming.RequestNamedPtfxAsset(assetName, cb) end

---@param animSet string
---@param cb fun()
function ESX.Streaming.RequestAnimSet(animSet, cb) end

---@param animDict string
---@param cb fun()
function ESX.Streaming.RequestAnimDict(animDict, cb) end

---@param weaponHash string | number
---@param cb fun()
function ESX.Streaming.RequestWeaponAsset(weaponHash, cb) end

---@param length number
---@return string
function ESX.GetRandomString(length) end

---@return ESXConfig
function ESX.GetConfig() end

---@param weaponName string
---@return number
---@return ESXConfigWeapon
function ESX.GetWeapon(weaponName) end

---@param weaponHash string | number
---@return ESXConfigWeapon
function ESX.GetWeaponFromHash(weaponHash) end

---@param byHash? boolean
---@return ESXConfigWeapon[]
function ESX.GetWeaponList(byHash) end

---@param weaponName string
---@return string
function ESX.GetWeaponLabel(weaponName) end

---@param weaponName string
---@param weaponComponent string
---@return ESXConfigWeaponComponent
function ESX.GetWeaponComponent(weaponName, weaponComponent) end

---@param table table
---@param nb? number
---@return string
function ESX.DumpTable(table, nb) end

---@param value number
---@param numDecimalPlaces? number
---@return number
function ESX.Round(value, numDecimalPlaces) end

---@param value any
---@param ... string[]
---@return boolean
---@return string? errorMessage
function ESX.ValidateType(value, ...) end

---@param value any
---@param ... string[]
---@return boolean
function ESX.AssertType(value, ...) end

---@param value number
---@param numDecimalPlaces? number
---@return number
function ESX.Math.Round(value, numDecimalPlaces) end

---@param value string | number
---@return string
function ESX.Math.GroupDigits(value) end

---@param value string | number
---@return string?
function ESX.Math.Trim(value) end

---@param min number
---@param max number
---@return number
function ESX.Math.Random(min, max) end

---@param t table
---@return number
function ESX.Table.SizeOf(t) end

---@param t string[] | number[]
---@return table<string, true>
function ESX.Table.Set(t) end

---@param t any[] | table<number, any>
---@param value any
---@return number
function ESX.Table.IndexOf(t, value) end

---@param t any[] | table<number, any>
---@param value any
---@return number
function ESX.Table.LastIndexOf(t, value) end

---@param t any[] | table<number, any>
---@param cb fun(value: any): boolean?
---@return any?
function ESX.Table.Find(t, cb) end

---@param t any[] | table<number, any>
---@param cb fun(value: any): boolean?
---@return number
function ESX.Table.FindIndex(t, cb) end

---@param t any[] | table<number, any>
---@param cb fun(value: any): boolean?
---@return any[]
function ESX.Table.Filter(t, cb) end

---@param t any[] | table<number, any>
---@param cb fun(value: any, index: number): any
---@return table
function ESX.Table.Map(t, cb) end

---@generic T:table<number, any>
---@param t T
---@return T
function ESX.Table.Reverse(t) end

---@generic T:table
---@param t T
---@return T
function ESX.Table.Clone(t) end

---@generic T, U: table
---@param t1 T The first table to merge into.
---@param t2 T The first table to merge into.
---@return T|U
function ESX.Table.Concat(t1, t2) end

---@param t any[] | table<number, any>
---@param sep string
---@return string
function ESX.Table.Join(t, sep) end

---@param tab table
---@param val any
---@return boolean
function ESX.Table.TableContains(tab, val) end

---@param t table
---@param order boolean
---@return fun(): string | number, any
function ESX.Table.Sort(t, order) end

---@param msec number
---@param cb fun()
---@return number
function ESX.SetTimeout(msec, cb) end

---@param id number
function ESX.ClearTimeout(id) end

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

---@param name string | string[]
---@param group string
---@param cb fun(xPlayer: xPlayer | false, args: table<string, string | number | xPlayer>, error: fun(message: string))
---@param allowConsole? boolean
---@param suggestion? ESXCommandSuggestion[]
function ESX.RegisterCommand(name, group, cb, allowConsole, suggestion) end

---@return string[]
function ESX.GetPlayers() end

---@param key string
---@param val any
---@return xPlayer[]
function ESX.GetExtendedPlayers(key, val) end

---@param key string
---@param val any
---@return number
function ESX.GetNumPlayers(key, val) end

---@param source number | string
---@return xPlayer
function ESX.GetPlayerFromId(source) end

---@param identifier string
---@return string
function ESX.GetPlayerFromIdentifier(identifier) end

---@param playerId string
function ESX.GetIdentifier(playerId) end

---@param model string | number
---@param player number
---@param cb fun(type: string)
function ESX.GetVehicleType(model, player, cb) end

---@param name? string
---@param title string
---@param color? string
---@param message? string
function ESX.DiscordLog(name, title, color, message) end

---@param name? string
---@param title string
---@param color? string
---@param fields? { name: string, value: string, inline?: boolean }[]
function ESX.DiscordLogFields(name, title, color, fields) end

function ESX.RefreshJobs() end

---@generic Item: string
---@param item Item
---@param cb fun(source: number, item: Item, ...: any)
function ESX.RegisterUsableItem(item, cb) end

---@param index string
---@param overrides table<string, fun(self: self | any)>
function ESX.RegisterPlayerFunctionOverrides(index, overrides) end

---@param index string
function ESX.SetPlayerFunctionOverride(index) end

---@param item string
function ESX.GetItemLabel(item) end

---@return table<string, ESXJob>
function ESX.GetJobs() end

---@return table<string, true>
function ESX.GetUsableItems() end

---@param itemType 'item_weapon' | 'item_standart' | 'item_ammo' | 'item_account' | string
---@param name string
---@param count number
---@param label string
---@param playerId string
---@param components table<string, number>
---@param tintIndex number
---@param coords vector3 | vector4 | { x: number, y: number, z: number }
function ESX.CreatePickup(itemType, name, count, label, playerId, components, tintIndex, coords) end

---@param job string
---@param grade? string
---@return boolean
function ESX.DoesJobExist(job, grade) end

---@param source vector3|number playerId or vector3 coordinates
---@param maxDistance number
---@param ignore? table<number, true>
---@return { id: number, ped: number, coords: vector3, dist: number }[]
function ESX.OneSync.GetPlayersInArea(source, maxDistance, ignore) end

---@param source vector3|number playerId or vector3 coordinates
---@param maxDistance number
---@param ignore? table<number, true>
---@return { id: number, ped: number, coords: vector3, dist: number }
function ESX.OneSync.GetClosestPlayer(source, maxDistance, ignore) end

---@param model number | string
---@param coords vector3 | { x: number, y: number, z: number }
---@param heading number
---@param properties ESXVehicleOptionalProperties
---@param cb fun(netId: number)
function ESX.OneSync.SpawnVehicle(model, coords, heading, properties, cb) end

---@param model number | string
---@param coords vector3 | { x: number, y: number, z: number }
---@param heading number
---@param cb fun(netId: number)
function ESX.OneSync.SpawnObject(model, coords, heading, cb) end

---@param model number | string
---@param coords vector3 | { x: number, y: number, z: number }
---@param heading number
---@param cb fun(netId: number)
function ESX.OneSync.SpawnPed(model, coords, heading, cb) end

---@param model number | string
---@param coords vector3 | { x: number, y: number, z: number }
---@param heading number
---@param cb fun(netId: number)
function ESX.OneSync.SpawnPedInVehicle(model, coords, heading, cb) end

---@param coords vector3
---@param maxDistance number
---@param modelFilter table<number, true>
---@return number[]
function ESX.OneSync.GetPedsInArea(coords, maxDistance, modelFilter) end

---@param coords vector3
---@param maxDistance number
---@param modelFilter table<number, true>
---@return number[]
function ESX.OneSync.GetObjectsInArea(coords, maxDistance, modelFilter) end

---@param coords vector3
---@param maxDistance number
---@param modelFilter table<number, true>
---@return number[]
function ESX.OneSync.GetVehiclesInArea(coords, maxDistance, modelFilter) end

---@param coords vector3
---@param modelFilter table<number, true>
---@return number entityId, number distance, vector3 coords
function ESX.OneSync.GetClosestPed(coords, modelFilter) end

---@param coords vector3
---@param modelFilter table<number, true>
---@return number entityId, number distance, vector3 coords
function ESX.OneSync.GetClosestObject(coords, modelFilter) end

---@param coords vector3
---@param modelFilter table<number, true>
---@return number entityId, number distance, vector3 coords
function ESX.OneSync.GetClosestVehicle(coords, modelFilter) end

--- @param name string
--- @param label string
--- @param grades ESXJobGrade[]
function ESX.CreateJob(name, label, grades) end
