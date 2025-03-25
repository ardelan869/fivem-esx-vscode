---@diagnostic disable:duplicate-doc-alias
---@diagnostic disable:duplicate-doc-field
---@diagnostic disable:duplicate-doc-param

---@meta

ESX.Streaming = {};

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
