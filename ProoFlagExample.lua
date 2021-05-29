--[[
    This is a local script inside of the player scripts
]]

--Services||
local LocalizationService 	= game:GetService("LocalizationService")
local ReplicatedStorage 	= game:GetService("ReplicatedStorage")
local Players 				= game:GetService("Players")
----------||

--Dependencies||
local countries = require(ReplicatedStorage:WaitForChild("ProoCountry"))
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
	local countryData = countries.getCountry(code)
	print(countryData)
else
	warn("Couldn't proccess players country")
end
---------||






