RegisterNUICallback('startMatchmaking', function(data, cb)
    TriggerServerEvent('hopout:startMatchmaking', data.mode)
    cb({})
end)

RegisterNetEvent('hopout:startMatch')
AddEventHandler('hopout:startMatch', function(arenaLocation)
    local spawnLocation = Config.ArenaLocations[arenaLocation]
    DoScreenFadeOut(500)
    Citizen.Wait(500)
    SetEntityCoords(PlayerPedId(), spawnLocation.x, spawnLocation.y, spawnLocation.z)
    SetEntityHeading(PlayerPedId(), spawnLocation.w)
    DoScreenFadeIn(500)
end)