--Um objeto é guardar varias variável em um local (um conjunto de variáveis)

-- Objetos 

Local carro = { 
    [1] = 300,
    ["Portas"] = 4
    ["Motor"] = "Gasolina" 
    --Objeto dentro de outro objeto
    ["o"]{
        ["cor"] = "Branco"    

    }
}


print(carro[1])

-- duas maneiras de fazer a mesma coisa
print(carro["portas"])
print(carro.portas)

--acessando o atributo cor do subobjeto
print (carro.o.cor)