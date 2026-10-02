fx_version 'cerulean'
game 'gta5'

author 'CopintevePvpSystem'
description 'Build me a complete standalone FiveM HopOut PvP server base.

IMPORTANT:

* No QBCore
* No Qbox/QBX
'
version '1.0.0'


client_scripts {
    'client.lua',
    'client/*.lua'
}

server_scripts {
    'server.lua',
    'server/*.lua'
}

shared_scripts {
    'config.lua',
    'shared.lua'
}

ui_page 'html/index.html'

files {
    'html/*.html',
    'html/*.css',
    'html/*.js'
}
