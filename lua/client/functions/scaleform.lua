---@diagnostic disable:duplicate-doc-alias
---@diagnostic disable:duplicate-doc-field
---@diagnostic disable:duplicate-doc-param

---@meta

ESX.Scaleform = {};
ESX.Scaleform.Utils = {};

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
