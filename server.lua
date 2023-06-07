RegisterServerEvent('msgauto:mandar')
AddEventHandler('msgauto:mandar', function()
    local message = Config.mensajes[math.random(1, #Config.mensajes)]
    TriggerClientEvent('msgauto:mostrar', -1, message)
end)