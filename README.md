# About
- Change weather to thunderstorm before tx server restart for QBCore servers

## Dependencies

- [QBCore](https://github.com/qbcore-framework/qb-core)

# Installation
- Download ZIP
- Drag and drop resource into your server files, make sure to remove -main in the folder name
- add "ensure lgd-stormrestart" in your "server.cfg" file

## QoL
To hide qb-core notification when the weather changes go to: qb-weathersync > server > server.lua and replace the code as shown below:
 * Before:
```lua
RegisterNetEvent('qb-weathersync:server:setWeather', function(weather)
    local src = getSource(source)
    if isAllowedToChange(src) then
        local success = setWeather(weather)
        if src > 0 then
            if (success) then TriggerClientEvent('QBCore:Notify', src, Lang:t('weather.updated'))
            else TriggerClientEvent('QBCore:Notify', src, Lang:t('weather.invalid'))
            end
        end
    end
end)
```
 * After:
```lua
RegisterNetEvent('qb-weathersync:server:setWeather', function(weather)
    local src = getSource(source)
    if isAllowedToChange(src) then
        local success = setWeather(weather)
        if src > 0 then
            if not (success) then
                TriggerClientEvent('QBCore:Notify', src, Lang:t('weather.invalid'))
            end
        end
    end
end)
```
