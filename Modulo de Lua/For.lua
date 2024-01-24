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

for k,v in pairs(lista) do
    print(k)
    print(v.nome)
end    