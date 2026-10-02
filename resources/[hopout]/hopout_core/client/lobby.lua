local function createLobbyBlips()
    for name, location in pairs(Config.LobbyLocations) do
        local blip = AddBlipForCoord(location.x, location.y, location.z)
        SetBlipSprite(blip, 1)
        SetBlipDisplay(blip, 4)
        SetBlipScale(blip, 1.0)
        SetBlipColour(blip, 5)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName('STRING')
        AddTextComponentString(name)
        EndTextCommandSetBlipName(blip)
    end
end

Citizen.CreateThread(function()
    createLobbyBlips()
end)