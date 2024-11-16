local QBCore = exports['qb-core']:GetCoreObject()

-- Weather Type
RegisterNetEvent('lgd:client:ChangeWeather', function()
    Wait(math.random(5000, 10000))
    TriggerServerEvent('qb-weathersync:server:setWeather', 'THUNDER')
end)