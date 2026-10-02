local isCharacterCreated = false

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if not isCharacterCreated then
            TriggerServerEvent('hopout:checkCharacter')
        end
    end
end)

RegisterNetEvent('hopout:openCharacterCreator')
AddEventHandler('hopout:openCharacterCreator', function()
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = 'openCharacterCreator'
    })
end)

RegisterNUICallback('createCharacter', function(data, cb)
    TriggerServerEvent('hopout:createCharacter', data.firstname, data.gender)
    cb({})
end)

RegisterNetEvent('hopout:spawnPlayer')
AddEventHandler('hopout:spawnPlayer', function(model)
    isCharacterCreated = true
    SetNuiFocus(false, false)
    local spawnLocation = Config.LobbyLocations.PLAY
    DoScreenFadeOut(500)
    Citizen.Wait(500)
    SetEntityCoords(PlayerPedId(), spawnLocation.x, spawnLocation.y, spawnLocation.z)
    SetEntityHeading(PlayerPedId(), spawnLocation.w)
    SetPedComponentVariation(PlayerPedId(), 0, model, 0, 0)
    DoScreenFadeIn(500)
end)