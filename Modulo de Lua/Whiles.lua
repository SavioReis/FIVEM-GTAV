local lista = {
    [1] = {
        ['nome'] = "Savio",
        ['idade'] = 21
    },
    [2] = {
        ['nome'] = "ZeKa_Programacao",
        ['idade'] = 22
    }, 
    [3] = {
        ['nome'] = "Java",
        ['idade'] = 33
    } 
}

local count = 1 -- count serve para controlar o loop da variavel

while count <= #lista do

    print(lista[count].nome)    

    count = count + 1
end    