RegisterCommand('criarobjeto', async()=>{
    let modelo = 'prop_table_01_chr_a'
    await carregarModelo(modelo)
    let [x,y,z] = GetEntityCoords(PlayerPedId())
    CreateObject(modelo,x,y,z-1,false, false, false)
})