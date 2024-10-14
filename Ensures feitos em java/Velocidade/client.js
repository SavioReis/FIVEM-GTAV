supervelocidade = false

setTick(()=>{
    if(supervelocidade){
        ped = PlayerPedId()
        SetPedMoveRateOverride(ped, 9)
    }
})

RegisterCommand('velocidade',()=>{

    supervelocidade = !supervelocidade;

})