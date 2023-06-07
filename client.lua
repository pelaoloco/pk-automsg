local prefix = "pelaoloko"

RegisterNetEvent('msgauto:mostrar')
AddEventHandler('msgauto:mostrar', function(message)
    TriggerEvent('chatMessage', prefix, {255, 255, 255}, message)
end)

Citizen.CreateThread(function()
    while true do
        local intervalo = 60000 
        
        TriggerServerEvent('msgauto:mandar')
        
        Citizen.Wait(intervalo * 2) -- 2 minutos
    end
end)