RegisterCommand('criarcarro', async()=>{
    const modeloCarro = 'youga';
    const hashModelo = GetHashKey(modeloCarro);
    await carregarModelo(hashModelo);
    const ped = PlayerPedId();
    const [x,y,z] = GetEntityCoords(ped);
    carro = CreateVehicle(hashModelo, x,y,z, 0, false, false);
    SetVehicleAsNoLongerNeeded(carro);
    SetModelAsNoLongerNeeded(modeloCarro);
})