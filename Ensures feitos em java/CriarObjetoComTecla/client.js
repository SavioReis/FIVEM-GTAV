RegisterCommand('criarobjeto', async()=>{
    let modelo = 'prop_pallet_01a'
    await carregarModelo(modelo)
    let [x,y,z] = GetEntityCoords(PlayerPedId())
    let pallet = CreateObject(modelo,x,y,z-1,false, false, false)
    SetObjectAsNoLongerNeeded(pallet)
    SetModelAsNoLongerNeeded(modelo)
})
RegisterKeyMapping('criarobjeto', 'Criar um pallet', 'keyboard', 'i')