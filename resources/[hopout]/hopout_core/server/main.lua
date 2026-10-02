local oxmysql = exports.oxmysql

RegisterServerEvent('hopout:checkCharacter')
AddEventHandler('hopout:checkCharacter', function()
    local source = source
    local identifier = GetPlayerIdentifier(source, 0)
    
    oxmysql:execute('SELECT * FROM hopout_characters WHERE identifier = ?', {identifier}, function(result)
        if result[1] then
            TriggerClientEvent('hopout:spawnPlayer', source, result[1].model)
        else
            TriggerClientEvent('hopout:openCharacterCreator', source)
        end
    end)
end)