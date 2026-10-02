function getCoins(source)
    local identifier = GetPlayerIdentifier(source, 0)
    local result = oxmysql:executeSync('SELECT coins FROM hopout_characters WHERE identifier = ?', {identifier})
    return result[1].coins
end

function addCoins(source, amount)
    local identifier = GetPlayerIdentifier(source, 0)
    oxmysql:execute('UPDATE hopout_characters SET coins = coins + ? WHERE identifier = ?', {amount, identifier})
end

function removeCoins(source, amount)
    local identifier = GetPlayerIdentifier(source, 0)
    oxmysql:execute('UPDATE hopout_characters SET coins = coins - ? WHERE identifier = ?', {amount, identifier})
end

function checkBalance(source, amount)
    local coins = getCoins(source)
    return coins >= amount
end