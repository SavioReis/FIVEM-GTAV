-- Juntando Objeto , Lista , Loops e DrawMarkers
-- Codigo 100% otimizado 
local posicoes = {
    [1]= { ['x'] = 163.0821075439, ['y'] = -1000.3033447266, ['z'] = 29.845868575806 },
    [2]= { ['x'] = 168.0978075439, ['y'] = -1003.4043567266, ['z'] = 31.762292675942 },
    [3]= { ['x'] = 170.0821575440, ['y'] = -1007.7898765668, ['z'] = 36.890965575041 }
}

Citizen.CreateThread(function()
    while true do
        local time = 1000

        --pegar posição do player
        -- PlayerPedId() obtenho o player o jogador
        local ped = PlayerPedId() -- pego o objeto PlayerPedId e jogo dentro da variavel ped 
        local coords = GetEntityCoords(ped) -- GetEntityCoords extraio o posicionamento do player e jogando para coords

            
        for k, v in pairs(posicoes) do 
            -- distance cordenada de distancia entre meu player para a cordenada do Marker
            local distance = #(coords-vector3(v.x,v.y,v.z)) -- posição do player menos a posição de x,y e z

            if distance < 10 then -- quando a distancia for menor que 10 metros ele mostra 
                DrawMarker(21, v.x,v.y,v.z, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 2.0, 2.0, 2.0, 255, 128, 0, 50, false, true, 2, nil, nil, false)
                time = 1
            end    
        end

        Citizen.Wait(time)
    end
end)
