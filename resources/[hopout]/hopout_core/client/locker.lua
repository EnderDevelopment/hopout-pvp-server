local ownedItems = {}

RegisterNetEvent('hopout:updateOwnedItems')
AddEventHandler('hopout:updateOwnedItems', function(items)
    ownedItems = items
end)

RegisterNUICallback('equipItem', function(data, cb)
    TriggerServerEvent('hopout:equipItem', data.itemId)
    cb({})
end)

RegisterNetEvent('hopout:openLocker')
AddEventHandler('hopout:openLocker', function()
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = 'openLocker',
        items = ownedItems
    })
end)