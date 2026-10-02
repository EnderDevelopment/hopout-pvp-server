RegisterServerEvent('hopout:createCharacter')
AddEventHandler('hopout:createCharacter', function(firstname, gender)
    local source = source
    local identifier = GetPlayerIdentifier(source, 0)
    local model = gender == 'male' and 0 or 1
    
    oxmysql:execute('INSERT INTO hopout_characters (identifier, firstname, gender, model, coins, created_at, updated_at) VALUES (?, ?, ?, ?, ?, NOW(), NOW())', {identifier, firstname, gender, model, 1000}, function(result)
        TriggerClientEvent('hopout:spawnPlayer', source, model)
    end)
end)