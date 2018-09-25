ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

--## Trigger esx_phone3:togglePhone ##--

RegisterServerEvent("esx_phone3:togglePhone")
AddEventHandler("esx_phone3:togglePhone", function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)

    local phoneQ = xPlayer.getInventoryItem('phone').count
    local phoneOffQ = xPlayer.getInventoryItem('phoneoff').count

    if phoneQ > 0 then
        TriggerClientEvent("esx:showNotification", src, "Du ~r~stängde~s~ av telefonen")
        xPlayer.addInventoryItem('phoneoff', phoneQ)
        xPlayer.removeInventoryItem('phone', phoneQ)
    elseif phoneOffQ > 0 then
        TriggerClientEvent("esx:showNotification", src, "Du ~g~satte~s~ på telefonen")
        xPlayer.addInventoryItem('phone', phoneOffQ)
        xPlayer.removeInventoryItem('phoneoff', phoneOffQ)
    end
end)