-- Criar DrawMarkers  Tipos : https://docs.fivem.net/docs/game-references/markers/

-- DrawMarker será visto de longe
Citizen.CreateThread(function()
    while true do

        local ped = PlayerPedId()
        local coords = GetEntityCoords(ped)

        --posição x= 16308210754395  y=-1000.3033447266 z= 29.347299575806
        DrawMarker(2, 16308210754395, -1000.3033447266, 29.347299575806, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 2.0, 2.0, 2.0, 255, 128, 0, 50, false, true, 2, nil, nil, false)

        Wait(5)
    end
end)

-- Somente será visto quado o player estiver perto
Citizen.CreateThread(function()
    while true do

        local time = 1000

        local ped = PlayerPedId()
        local coords = GetEntityCoords(ped)

        local distance = #(coords vector3(16308210754395, -1000.3033447266, 29.347299575806))

        -- verifico se o player está perto
        if distance < 5 then 
            --posição x= 16308210754395  y=-1000.3033447266 z= 29.347299575806
            DrawMarker(2, 16308210754395, -1000.3033447266, 29.347299575806, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 2.0, 2.0, 2.0, 255, 128, 0, 50, false, true, 2, nil, nil, false)
            time = 5
        end    

        Wait(time)
    end
end)

  