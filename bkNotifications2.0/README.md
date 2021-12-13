`bkNotificationsV2`

Deberás ir a : `es_extended/client/functions.lua` y pegar esto:

ESX.ShowNotification = function(msg)

    TriggerEvent("esx_notifications:showNotification", {text = msg})

end

ESX.ShowAdvancedNotification = function(msg)

	TriggerEvent("esx_notifications:showAdvancedNotification", {text = msg})
end
Espero que te guste ;)
