local matchmakingQueues = {
    ['1v1'] = {},
    ['2v2'] = {},
    ['3v3'] = {},
    ['4v4'] = {},
    ['5v5'] = {}
}

RegisterServerEvent('hopout:startMatchmaking')
AddEventHandler('hopout:startMatchmaking', function(mode)
    local source = source
    local identifier = GetPlayerIdentifier(source, 0)
    
    if not matchmakingQueues[mode][identifier] then
        matchmakingQueues[mode][identifier] = source
        checkMatchmakingQueue(mode)
    end
end)

function checkMatchmakingQueue(mode)
    if #matchmakingQueues[mode] >= tonumber(string.sub(mode, 1, 1)) then
        local players = {}
        for i = 1, tonumber(string.sub(mode, 1, 1)) do
            table.insert(players, matchmakingQueues[mode][i])
        end
        
        for i = 1, #players do
            matchmakingQueues[mode][i] = nil
        end
        
        startMatch(players, mode)
    end
end

function startMatch(players, mode)
    local arenaLocation = 'ARENA1'
    for i = 1, #players do
        TriggerClientEvent('hopout:startMatch', players[i], arenaLocation)
    end
end