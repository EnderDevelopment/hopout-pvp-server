fx_version 'cerulean'
game 'gta5'

description 'HopOut PvP Server Base'
version '1.0.0'

author 'Your Name'

dependency 'oxmysql'

client_scripts {
    'client/main.lua',
    'client/character.lua',
    'client/lobby.lua',
    'client/party.lua',
    'client/shop.lua',
    'client/locker.lua',
    'client/matchmaking.lua',
    'client/arena.lua'
}

server_scripts {
    'server/main.lua',
    'server/characters.lua',
    'server/coins.lua',
    'server/shop.lua',
    'server/party.lua',
    'server/matchmaking.lua',
    'server/arena.lua'
}

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/style.css',
    'html/app.js'
}