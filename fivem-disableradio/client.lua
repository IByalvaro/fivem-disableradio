
ESX = exports["es_extended"]:getSharedObject()
local PlayerData                = {}

Citizen.CreateThread(function()
	Citizen.Wait(5000)
	PlayerData = ESX.GetPlayerData()
end)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)
            if IsPedInAnyVehicle(PlayerPedId()) then
                SetUserRadioControlEnabled(false)
                if GetPlayerRadioStationName() ~= nil then
                SetVehRadioStation(GetVehiclePedIsIn(PlayerPedId()),"OFF")
                end
        end
    end
end)
