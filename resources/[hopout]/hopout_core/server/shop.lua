RegisterServerEvent('hopout:purchaseItem')
AddEventHandler('hopout:purchaseItem', function(itemId)
    local source = source
    local item = Config.ShopItems[itemId]
    
    if item and checkBalance(source, item.price) then
        removeCoins(source, item.price)
        TriggerClientEvent('hopout:itemPurchased', source, itemId)
    else
        TriggerClientEvent('hopout:purchaseFailed', source)
    end
end)