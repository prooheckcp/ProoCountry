# ProoCountry
## A Roblox flag library V1.0

## Features

- Get players country name
- Get players country flag

### ProoCountry.getCountry(code)

Arguments: String

Returns: {decal: string, name: string}

Example:
```lua
--Services||
local LocalizationService 	= game:GetService("LocalizationService")
local ReplicatedStorage 	= game:GetService("ReplicatedStorage")
local Players 				= game:GetService("Players")
----------||

--Dependencies||
local ProoCountry = require(ReplicatedStorage:WaitForChild("ProoCountry"))
--------------||

--Variables||
local player = game.Players.LocalPlayer
-----------||

--Methods||
local result, code = pcall(function()
	--Get the country code
	return LocalizationService:GetCountryRegionForPlayerAsync(player)
end)

if result and code ~= nil then
	
	--Get the information about this count (both name and flag)
	local countryData = ProoCountry.getCountry(code)
	print(countryData)
else
	warn("Couldn't process players country")
end
---------||

```
## Installation

All it requires is Roblox Studio.

* Download it from here: https://www.roblox.com/library/6883565702/ProoCountry
* In Roblox Studio open the "Toolbox" window and open the model.
*  Now in the **Explorer** drag and drop the script from the **Workspace** into the **ReplicatedStorage**.
*  Now you can just require it from any script and use it as suggested above on the example.

## Contact

Found any problem or simply wanna give some feedback regarding the library? Just hit me up!

Discord: レム デベロッパー | prooheckcp#2001

Twitter: https://twitter.com/Prooheckcp


**100% free and open source**
