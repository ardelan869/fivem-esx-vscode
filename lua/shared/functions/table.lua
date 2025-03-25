---@diagnostic disable:duplicate-doc-alias
---@diagnostic disable:duplicate-doc-field
---@diagnostic disable:duplicate-doc-param

---@meta

ESX.Table = {};

--- Returns a string representation of the given table.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/shared/table#dumptable)
---
--- `CLIENT`, `SERVER`
---
---@param table table
---@param nb? number
---@return string
function ESX.DumpTable(table, nb) end

--- This returns the size of a table. This is a nil proof version to #table.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/shared/table#sizeof)
---
--- `CLIENT`, `SERVER`
---
---@param t table
---@return number
function ESX.Table.SizeOf(t) end

--- Returns a set of the given table.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/shared/table#set)
---
--- `CLIENT`, `SERVER`
---
---@param t string[] | number[]
---@return table<string | number, true>
function ESX.Table.Set(t) end

--- Returns the index of the given value in the given table.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/shared/table#findindex)
---
--- `CLIENT`, `SERVER`
---
---@param t any[] | table<number, any>
---@param value any
---@return number
function ESX.Table.FindIndex(t, value) end

--- Returns the last index of the given value in the given table.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/shared/table#lastindexof)
---
--- `CLIENT`, `SERVER`
---
---@param t any[] | table<number, any>
---@param value any
---@return number
function ESX.Table.LastIndexOf(t, value) end

--- Returns the first value in the given table that satisfies the given callback.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/shared/table#findindex)
---
--- `CLIENT`, `SERVER`
---
---@param t any[] | table<number, any>
---@param cb fun(value: any): boolean?
---@return any?
function ESX.Table.Find(t, cb) end

--- Returns the index of the first value in the given table that satisfies the given callback.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/shared/table#findindex)
---
--- `CLIENT`, `SERVER`
---
---@param t any[] | table<number, any>
---@param cb fun(value: any): boolean?
---@return number
function ESX.Table.FindIndex(t, cb) end

--- Returns the values in the given table that satisfy the given callback.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/shared/table#filter)
---
--- `CLIENT`, `SERVER`
---
---@param t any[] | table<number, any>
---@param cb fun(value: any): boolean?
---@return any[]
function ESX.Table.Filter(t, cb) end

--- Returns a new table with the results of calling the given callback on each value in the given table.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/shared/table#map)
---
--- `CLIENT`, `SERVER`
---
---@param t any[] | table<number, any>
---@param cb fun(value: any, index: number): any
---@return table
function ESX.Table.Map(t, cb) end

--- Returns a new table with the values in the given table in reverse order.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/shared/table#reverse)
---
--- `CLIENT`, `SERVER`
---
---@generic T:table<number, any>
---@param t T
---@return T
function ESX.Table.Reverse(t) end

--- Returns a deep copy of the given table.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/shared/table#clone)
---
--- `CLIENT`, `SERVER`
---
---@generic T:table
---@param t T
---@return T
function ESX.Table.Clone(t) end

--- Returns a new table that is the concatenation of the given tables.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/shared/table#concat)
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
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/shared/table#join)
---
--- `CLIENT`, `SERVER`
---
---@param t any[] | table<number, any>
---@param sep string
---@return string
function ESX.Table.Join(t, sep) end

--- Returns whether the given table contains the given value.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/shared/table#tablecontains)
---
--- `CLIENT`, `SERVER`
---
---@param tab table
---@param val any
---@return boolean
function ESX.Table.TableContains(tab, val) end

--- Returns a new iterator function that returns the values in the given table in order.
---
--- [View documentation](https://docs.esx-framework.org/en/esx_core/es_extended/shared/table#sort)
---
--- `CLIENT`, `SERVER`
---
---@param t table
---@param order boolean
---@return fun(): string | number, any
function ESX.Table.Sort(t, order) end

--- Returns the table as an array.
---
--- `CLIENT`, `SERVER`
---
---@param t table
---@return any[]
function ESX.Table.ToArray(t) end

--- Wipes the given table.
---
--- `CLIENT`, `SERVER`
---
---@param t table
function ESX.Table.Wipe(t) end
