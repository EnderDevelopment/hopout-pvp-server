local parties = {}

RegisterServerEvent('hopout:createParty')
AddEventHandler('hopout:createParty', function()
    local source = source
    local identifier = GetPlayerIdentifier(source, 0)
    
    if not parties[identifier] then
        parties[identifier] = {
            leader = source,
            members = {source}
        }
        TriggerClientEvent('hopout:updatePartyMembers', source, parties[identifier].members)
    end
end)

RegisterServerEvent('hopout:invitePlayer')
AddEventHandler('hopout:invitePlayer', function(playerId)
    local source = source
    local identifier = GetPlayerIdentifier(source, 0)
    
    if parties[identifier] then
        TriggerClientEvent('hopout:receiveInvite', playerId, source)
    end
end)

RegisterServerEvent('hopout:acceptInvite')
AddEventHandler('hopout:acceptInvite', function(inviterId)
    local source = source
    local inviterIdentifier = GetPlayerIdentifier(inviterId, 0)
    
    if parties[inviterIdentifier] then
        table.insert(parties[inviterIdentifier].members, source)
        TriggerClientEvent('hopout:updatePartyMembers', source, parties[inviterIdentifier].members)
    end
end)