local partyMembers = {}

RegisterNetEvent('hopout:updatePartyMembers')
AddEventHandler('hopout:updatePartyMembers', function(members)
    partyMembers = members
end)

RegisterNUICallback('createParty', function(data, cb)
    TriggerServerEvent('hopout:createParty')
    cb({})
end)

RegisterNUICallback('invitePlayer', function(data, cb)
    TriggerServerEvent('hopout:invitePlayer', data.playerId)
    cb({})
end)

RegisterNetEvent('hopout:receiveInvite')
AddEventHandler('hopout:receiveInvite', function(inviterId)
    SendNUIMessage({
        action = 'showInvite',
        inviterId = inviterId
    })
end)

RegisterNUICallback('acceptInvite', function(data, cb)
    TriggerServerEvent('hopout:acceptInvite', data.inviterId)
    cb({})
end)