---@diagnostic disable:duplicate-doc-alias
---@diagnostic disable:duplicate-doc-field
---@diagnostic disable:duplicate-doc-param

---@meta

---@class ESXServerJobGrade
---@field id number
---@field job_grades string
---@field grade number
---@field name string
---@field label string
---@field salary number
---@field skin_male? table<string, number>
---@field skin_female? table<string, number>

---@class ESXServerJob
---@field name string
---@field label string
---@field grades table<string, ESXServerJobGrade>

---@type table<number, xPlayer>
ESX.Players = {};

---@type table<string, ESXServerJob>
ESX.Jobs = {};

---@type table<string, ESXItem>
ESX.Items = {};
