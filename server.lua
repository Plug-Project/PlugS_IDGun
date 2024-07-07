local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP", GetCurrentResourceName())

idGunS = {}
Proxy.addInterface(GetCurrentResourceName(), idGunS)
Tunnel.bindInterface(GetCurrentResourceName(), idGunS)
idGunC = Tunnel.getInterface(GetCurrentResourceName(), GetCurrentResourceName())

function idGunS.getIds(text)
    local source = source
    vRP.prompt({source, "ID값 확인 / 복사 Ctrl-A Ctrl-C", text, function(player, choice) end})
end

function idGunS.getPermission()
    local user_id = vRP.getUserId({source})
    if vRP.hasPermission({user_id, "admin.whitelisted"}) then
        return true
    else
        vRPclient.notify({source, "권한이 없습니다."})
        return false
    end
end