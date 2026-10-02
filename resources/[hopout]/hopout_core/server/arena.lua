RegisterServerEvent('hopout:playerDied')
AddEventHandler('hopout:playerDied', function()
    local source = source
    TriggerClientEvent('hopout:playerDied', source)
end)