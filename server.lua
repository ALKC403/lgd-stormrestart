-- TxAdmin Auto Restart
AddEventHandler('txAdmin:events:scheduledRestart', function(eventData)
    if eventData.secondsRemaining == Config.Storm then
        TriggerClientEvent('lgd:client:ChangeWeather', -1)
    end
end)
