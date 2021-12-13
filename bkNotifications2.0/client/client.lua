ESX = nil 
Citizen.CreateThread(function() 
    while ESX == nil do 
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end) 
        Citizen.Wait(0) 
    end 
end)


function Conversor(text)
    text = text:gsub("~r~", "<span class='red'>") 
    text = text:gsub("~b~", "<span class='blue'>")
    text = text:gsub("~g~", "<span class='green'>")
    text = text:gsub("~y~", "<span class='yellow'>")
    text = text:gsub("~p~", "<span class='purple'>")
    text = text:gsub("~c~", "<span class='grey'>")
    text = text:gsub("~m~", "<span class='darkgrey'>")
    text = text:gsub("~u~", "<span class='black'>")
    text = text:gsub("~o~", "<span class='gold'>")
    text = text:gsub("~s~", "</span>")
    text = text:gsub("~w~", "</span>")
    text = text:gsub("~b~", "<b>")
    text = text:gsub("~n~", "<br>")
    text = "<span>" .. text .. "</span>"

    return text
end
RegisterNetEvent('esx_notifications:showNotification')
AddEventHandler('esx_notifications:showNotification', function(notification)
    SendNUIMessage({
        see = true, 
        type = notification.type or false,
        text = Conversor(notification.text) or "",
        title = notification.title or "null",
        timeout = notification.timeout or 2000
    })
end)
RegisterNetEvent('esx_notifications:showAdvancedNotification')
AddEventHandler('esx_notifications:showAdvancedNotification', function(notification)
    SendNUIMessage({
        see = true, 
        type = notification.type or false,
        text = Conversor(notification.text) or "",
        title = notification.title or "null",
        timeout = notification.timeout or 2000
    })
end)

RegisterNetEvent('esx_notifications:RemoveNoti')
AddEventHandler('esx_notifications:RemoveNoti', function()
    SendNUIMessage({
        remove = true
    })
end)
RegisterCommand('ismael', function(source)
    ESX.ShowNotification('Has recibido una notificación')
end)