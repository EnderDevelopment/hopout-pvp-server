RegisterNUICallback('createCharacter', function(data, cb)
    if data.firstname and data.gender then
        TriggerServerEvent('hopout:createCharacter', data.firstname, data.gender)
    else
        SendNUIMessage({
            action = 'showError',
            message = 'Please fill in all fields'
        })
    end
    cb({})
end)