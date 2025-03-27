---@diagnostic disable:duplicate-doc-alias
---@diagnostic disable:duplicate-doc-field
---@diagnostic disable:duplicate-doc-param

---@meta

---@class ESXCommandSuggestion
---@field help string
---@field validate boolean
---@field arguments ESXCommandArgument[]

---@class ESXCommandArgument
---@field name string
---@field help string
---@field type 'string' | 'number' | 'player' | 'weapon' | 'item' | 'coordinate'

---@class ESXDiscordLogField
---@field name string
---@field value string
---@field inline? boolean

---@class xPlayer
---@field accounts ESXPlayerAccount[]
---@field coords vector3
---@field group string
---@field identifier string
---@field inventory ESXItem[]
---@field job ESXPlayerJob
---@field loadout ESXLoadoutWeapon[]
---@field name string
---@field playerId number
---@field source number
---@field variables table<string, any>
---@field weight number
---@field maxWeight number
---@field metadata table<string, any>
---@field lastPlaytime number
---@field paycheckEnabled boolean
---@field admin boolean
---@field license string
---@field triggerEvent fun(eventName: string, ...: any)
---@field togglePaycheck fun(toggle: boolean)
---@field isPaycheckEnabled fun(): boolean
---@field setCoords fun(coordinates: vector4 | vector3 | { x: number; y: number; z: number; w?: number })
---@field getCoords fun(vector: boolean, heading: boolean): vector3 | vector4 | { x: number; y: number; z: number; heading: number }
---@field kick fun(reason: string)
---@field getPlayTime fun(): number
---@field setMoney fun(money: number)
---@field getMoney fun(): number
---@field addMoney fun(money: number, reason?: string)
---@field removeMoney fun(money: number, reason?: string)
---@field getIdentifier fun(): string
---@field setGroup fun(newGroup: string)
---@field getGroup fun(): string
---@field set fun(key: string, value: any)
---@field get fun(key: string): any?
---@field getAccounts (fun(minimal?: false): ESXPlayerAccount[]) | (fun(minimal: true): table<string, number>)
---@field getAccount fun(account: string): ESXPlayerAccount?
---@field getInventory (fun(minimal?: false): ESXItem[]) | (fun(minimal: true): table<string, number>)
---@field getJob fun(): ESXPlayerJob
---@field getLoadout fun(minimal?: false): ESXLoadoutWeapon[]
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
---@field setJob fun(job: string, grade: string, onDuty?: boolean)
---@field addWeapon fun(weaponName: string, ammo: number)
---@field addWeaponComponent fun(weaponName: string, weaponComponent: string)
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
---@field getWeapon fun(weaponName: string): number?, ESXLoadoutWeapon?
---@field showNotification fun(msg: string, type?: 'info' | 'error' | 'success', length?: number)
---@field showAdvancedNotification fun(sender: string, subject: string, msg: string, textureDict: string, iconType: number, flash?: boolean, saveToBrief?: boolean, hudColorIndex?: number)
---@field showHelpNotification fun(msg: string, thisFrame?: boolean, beep?: boolean, duration?: number)
---@field getMeta fun(index: string, subIndex?: string | string[]): string | number | table | nil
---@field setMeta (fun(index: string, value: string | number | table, subValue?: nil)) | (fun(index: string, value: string, subValue: string | number | table))
---@field clearMeta fun(index: string, subValues?: string | string[])

--- This function prints a message to the console when Debug is enabled in the ESX Config.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/server/functions#print-a-trace)
---
--- `SERVER`
---
---@param msg string
function ESX.Trace(msg) end

--- Triggers an event for one or more clients.
---
--- `SERVER`
---
---@param eventName string The name of the event to trigger.
---@param playerIds number[] | number If a number, represents a single player ID. If a table, represents an array of player IDs.
---@param ... any Additional arguments to pass to the event handler.
function ESX.TriggerClientEvent(eventName, playerIds, ...) end

--- This function registers a command.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/server/functions#registercommand)
---
--- `SERVER`
---
---@param name string | string[]
---@param group string
---@param cb fun(xPlayer: xPlayer | false, args: table<string, string | number | xPlayer>, error: fun(message: string))
---@param allowConsole? boolean
---@param suggestion? ESXCommandSuggestion[]
function ESX.RegisterCommand(name, group, cb, allowConsole, suggestion) end

--- This function returns all loaded xPlayers and if a filter is applied that match the filter.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/server/functions#getextendedplayers)
---
--- `SERVER`
---
---@overload fun(key?: nil, val?: nil): xPlayer[]
---@overload fun(key: string, val: any | any[]): xPlayer[]
---@return xPlayer[]
function ESX.GetExtendedPlayers(key, val) end

--- This function returns the amount of players online and if a filter is applied that match the filter.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/server/functions#getnumplayers)
---
--- `SERVER`
---
---@overload fun(key?: nil, val?: nil): number
---@overload fun(key: string, val: any): number
---@overload fun(key: string, val: any[]): number[]
---@return number | number[]
function ESX.GetNumPlayers(key, val) end

--- This function returns the xPlayer object of the specified playerId.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/server/functions#getplayerfromid)
---
--- `SERVER`
---
---@param source number
---@return xPlayer?
function ESX.GetPlayerFromId(source) end

--- This function returns the xPlayer object of the specified identifier.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/server/functions#getplayerfromidentifier)
---
--- `SERVER`
---
---@param identifier string
---@return xPlayer?
function ESX.GetPlayerFromIdentifier(identifier) end

--- This function returns the identifier of the specified player. If in Cfx.re Development Kit will return "ESX-DEBUG-LICENSE"
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/server/functions#getidentifier)
---
--- `SERVER`
---
---@param playerId number | string
---@return string
function ESX.GetIdentifier(playerId) end

--- This function returns the vehicle type of the speicified vehicle.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/server/functions#getvehicletype)
---
--- `SERVER`
---
---@param model string | number
---@param player number
---@param cb fun(type: ESXVehicleType)
function ESX.GetVehicleType(model, player, cb) end

--- This function sends a discord log.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/server/functions#discordlog)
---
--- `SERVER`
---
---@param name? ESXConfigDiscordLogsWebhooksKeys | string
---@param title string
---@param color? ESXConfigDiscordLogsColorsKeys | string
---@param message string
function ESX.DiscordLog(name, title, color, message) end

--- This function sends a discord log with fields.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/server/functions#discordlogfields)
---
--- `SERVER`
---
---@param name? ESXConfigDiscordLogsWebhooksKeys | string
---@param title string
---@param color? ESXConfigDiscordLogsColorsKeys | string
---@param fields ESXDiscordLogField[]
function ESX.DiscordLogFields(name, title, color, fields) end

--- This function gets all jobs from the database and updates the `ESX.Jobs` table.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/server/functions#refreshjobs)
---
--- `SERVER`
---
function ESX.RefreshJobs() end

--- This function registers a usable item.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/server/functions#registerusableitem)
---
--- `SERVER`
---
---@param item string
---@param cb fun(source: number, item: string, ...: any)
function ESX.RegisterUsableItem(item, cb) end

--- This function forces a player to use a item.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/server/functions#useitem)
---
--- `SERVER`
---
---@param source number
---@param item string
---@param ... any
function ESX.UseItem(source, item, ...) end

--- With this function you can override existing functions in the player object or add new ones.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/server/functions#registerplayerfunctionoverrides)
---
--- `SERVER`
---
---@param index string
---@param overrides table<string, fun(self: xPlayer): fun(...: any)>
function ESX.RegisterPlayerFunctionOverrides(index, overrides) end

--- This function sets the player function override.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/server/functions#setplayerfunctionoverride)
---
--- `SERVER`
---
---@param index string
function ESX.SetPlayerFunctionOverride(index) end

--- This function returns the item label of the given item.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/server/functions#getitemlabel)
---
--- `SERVER`
---
---@param item string
---@return string?
function ESX.GetItemLabel(item) end

--- This function returns all registered jobs.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/server/functions#getjobs)
---
--- `SERVER`
---
---@return table<string, ESXServerJob>
function ESX.GetJobs() end

--- This function returns all items.
---
--- `SERVER`
---
---@return table<string, ESXItem>
function ESX.GetItems() end

--- This function returns all usable items.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/server/functions#getusableitems)
---
--- `SERVER`
---
---@return table<string, true>
function ESX.GetUsableItems() end

--- This function creates a pickup.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/server/functions#createpickup)
---
--- `SERVER`
---
---@param itemType 'item_standard' | 'item_money' | 'item_account' | 'item_weapon'
---@param name string
---@param count number
---@param label string
---@param playerId number
---@param components? string | string[]
---@param tintIndex? integer
---@param coords? vector3
function ESX.CreatePickup(itemType, name, count, label, playerId, components, tintIndex, coords) end

--- This function returns if the specified job and grade exist.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/server/functions#doesjobexist)
---
--- `SERVER`
---
---@param job string
---@param grade string | number
---@return boolean
function ESX.DoesJobExist(job, grade) end

--- This function creates a new job and inserts it into the database.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/server/functions#createjob)
---
--- `SERVER`
---
---@param name string
---@param label string
---@param grades { grade: number, name: string, label: string, salary: number }[]
function ESX.CreateJob(name, label, grades) end
