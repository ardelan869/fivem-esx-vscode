---@diagnostic disable:duplicate-doc-alias
---@diagnostic disable:duplicate-doc-field
---@diagnostic disable:duplicate-doc-param

---@meta

---@class ESXConfigWeaponComponent
---@field name string
---@field label string
---@field hash number

---@class ESXConfigWeapon
---@field name string
---@field label string
---@field components ESXConfigWeaponComponent[]

---@class ESXConfigDiscordActivityButton
---@field label string
---@field url string

---@alias ESXConfigDiscordLogsWebhooksKeys 'default' | 'text' | 'Chat' | 'UserActions' | 'Resources' | 'Paycheck'

---@class ESXConfigDiscordLogsWebhooks
---@field default string
---@field text string
---@field Chat string
---@field UserActions string
---@field Resources string
---@field Paycheck string

---@alias ESXConfigDiscordLogsColorsKeys 'default' | 'blue' | 'red' | 'green' | 'white' | 'black' | 'orange' | 'yellow' | 'pink' | 'lightgreen'

---@class ESXConfigDiscordLogsColors
---@field default number
---@field blue number
---@field red number
---@field green number
---@field white number
---@field black number
---@field orange number
---@field yellow number
---@field pink number
---@field lightgreen number

---@class ESXConfigDiscordLogs
---@field Webhooks ESXConfigDiscordLogsWebhooks
---@field Colors ESXConfigDiscordLogsColors

---@class ESXConfigDiscordActivity
---@field appId number
---@field assetName string
---@field assetText string
---@field buttons ESXConfigDiscordActivityButton[]
---@field presence string
---@field refresh number

---@class ESXConfig
---@field Locale string
---@field CustomInventory 'ox' | string | false
---@field DefaultJobDuty boolean
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
---@field MK2WeaponTints table<number, string>
---@field Weapons ESXConfigWeapon[]
---@field DiscordLogs ESXConfigDiscordLogs
---@field DiscordActivity ESXConfigDiscordActivity

--- Generates a random string of the specified length.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/shared#getrandomstring)
---
--- `CLIENT`, `SERVER`
---
---@param length number
---@return string
function ESX.GetRandomString(length) end

--- Returns the config.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/shared#getconfig)
---
--- `CLIENT`, `SERVER`
---
---@return ESXConfig
function ESX.GetConfig() end

--- Returns the weapon of the specified name.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/shared#getweapon)
---
--- `CLIENT`, `SERVER`
---
---@param weaponName string
---@return number
---@return ESXConfigWeapon
function ESX.GetWeapon(weaponName) end

--- Returns the weapon of the specified hash.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/shared#getweaponfromhash)
---
--- `CLIENT`, `SERVER`
---
---@param weaponHash string | number
---@return ESXConfigWeapon
function ESX.GetWeaponFromHash(weaponHash) end

--- Returns the weapons config.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/shared#getweaponlist)
---
--- `CLIENT`, `SERVER`
---
---@overload fun(byHash: false | nil): ESXConfigWeapon[]
---@overload fun(byHash: true): table<number, ESXConfigWeapon>
---@return table<number, ESXConfigWeapon> | ESXConfigWeapon[]
function ESX.GetWeaponList(byHash) end

--- Returns the label of the specified weapon.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/shared#getweaponlabel)
---
--- `CLIENT`, `SERVER`
---
---@param weaponName string
---@return string
function ESX.GetWeaponLabel(weaponName) end

--- Returns the given component of the given weapon.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/shared#getweaponcomponent)
---
--- `CLIENT`, `SERVER`
---
---@param weaponName string
---@param weaponComponent string
---@return ESXConfigWeaponComponent
function ESX.GetWeaponComponent(weaponName, weaponComponent) end

--- Validates the given value against the specified types.
---
--- `CLIENT`, `SERVER`
---
---@param value any
---@param ... type[]
---@return boolean success
---@return string? errorMessage
function ESX.ValidateType(value, ...) end

--- Asserts the given value against the specified types.
---
--- `CLIENT`, `SERVER`
---
---@param value any
---@param ... type[]
---@return boolean success
function ESX.AssertType(value, ...) end

--- This function will return a `boolean` if the given value is a function
---
--- `CLIENT`, `SERVER`
---
---@param value any
---@return boolean
function ESX.IsFunctionReference(value) end

--- This function will await a result
---
--- `CLIENT`, `SERVER`
---
---@param conditionFunc fun(): any A function that is repeatedly called until it returns a truthy value or the timeout is exceeded.
---@param errorMessage? string Optional. If set, an error will be thrown with this message if the condition is not met within the timeout. If not set, no error will be thrown.
---@param timeoutMs? number Optional. The maximum time to wait (in milliseconds) for the condition to be met. Defaults to 1000ms.
---@return boolean
---@return any: Returns success status and the returned value of the condition function.
function ESX.Await(conditionFunc, errorMessage, timeoutMs) end
