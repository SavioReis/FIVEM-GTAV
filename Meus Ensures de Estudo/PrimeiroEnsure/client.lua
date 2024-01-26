print("Teste do meu primeirto ensure")
print("Client")

--usando Threads para fazer um loop infinito
Citizen.CreateThread(function()
    local cont = 0

    while true do
        pritn(Thread 01)
        Wait(1000)--Usando Wait para fazer esse loop a cada 1 segundo
    end
end)

Citizen.CreateThread(function()
    local cont = 0

    while true do
        pritn(Thread 02)
        Wait(500)
    end
end)

-- Usando While
local cont = 0

while count < 10 do
    print(cont)
    cont = + 1
end

-- Criei um objeto com for
local listaObj {
    [1] = "Z",
    [2] = "E",
    [3] = "K",
    [4] = "A"
}

for k, value in pairs(listaObj) do 

    print(k.."-"..value)
end
