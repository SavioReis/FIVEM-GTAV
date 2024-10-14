RegisterCommand('skin', async()=>{
    let hash = GetHashKey('a_f_m_beach_01')
    await carregarModelo(hash)
    SetPlayerModel(PlayerId(), hash)
    SetPedDefaultComponentVariation(PlayerPedId())
})