`bkNotifyV2`

Os dejo por aqui la v2 de mis notificaciones, en esta te ahorrarás poniendo los exports en los scripts. 
Esto hará que el ESX.ShowNotification se reemplaze por nuestras notificaciones. Para ello deberás ir a : `es_extended/client/functions.lua` y pegar esto:

ESX.ShowNotification = function(msg)

    TriggerEvent("esx_notifications:showNotification", {text = msg})

end
Espero que te guste ;)