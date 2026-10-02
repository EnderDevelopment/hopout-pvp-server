local isInMatch = false

RegisterNetEvent('hopout:startMatch')
AddEventHandler('hopout:startMatch', function(arenaLocation)
    isInMatch = true
    local spawnLocation = Config.ArenaLocations[arenaLocation]
    DoScreenFadeOut(500)
    Citizen.Wait(500)
    SetEntityCoords(PlayerPedId(), spawnLocation.x, spawnLocation.y, spawnLocation.z)
    SetEntityHeading(PlayerPedId(), spawnLocation.w)
    DoScreenFadeIn(500)
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if isInMatch then
            if IsEntityDead(PlayerPedId()) then
                TriggerServerEvent('hopout:playerDied')
                isInMatch = false
            end
        end
    end
end)