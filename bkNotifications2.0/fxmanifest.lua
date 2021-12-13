author '! вк#0939'
description 'Notificaciones'
version '1.2.0'

fx_version 'bodacious'
games { 'gta5' }

server_scripts { 
    '@mysql-async/lib/MySQL.lua',
    "server/*.lua",
}

ui_page 'html/ui.html'

client_scripts {
    "client/*.lua",
}

files {
    "html/*.html",
    "html/*.css",
    "html/*.js",
    
}
