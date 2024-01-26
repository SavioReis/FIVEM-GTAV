-- Cordenadas
Citizen.CreateThread(function()
    while true do

        local ped = PlayerPedId()
        local coords = GetEntityCoords(ped)

        print("Posição")
        print("X: " .. coords.x)
        print("Y: " .. coords.y)
        print("Z: " .. coords.z)

        Wait(1000)
    end
end)

-- Pegar cordenadas por comando
function ImprimirCoordenadas()
    local ped = PlayerId()
    local coords = GetEntityCoords(GetPlayerPed(-1))

    print("Posição")
    print("X: " .. coords.x)
    print("Y: " .. coords.y)
    print("Z: " .. coords.z)
end

-- Registra o comando '/coordenadas'
RegisterCommand("cordenadas", function()
    ImprimirCoordenadas()
end, false)

-- Adiciona o comando '/coordenadas' à lista de comandos
TriggerEvent('chatMessage', 'Configuração do comando /coordenadas.')
