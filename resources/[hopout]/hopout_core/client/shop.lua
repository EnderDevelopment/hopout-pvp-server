RegisterNUICallback('purchaseItem', function(data, cb)
    TriggerServerEvent('hopout:purchaseItem', data.itemId)
    cb({})
end)

RegisterNetEvent('hopout:openShop')
AddEventHandler('hopout:openShop', function()
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = 'openShop',
        items = Config.ShopItems
    })
end)