fx_version "cerulean"

game "gta5"

author 'Flight Development'

description 'Flight Utility by Flight Development'

version '0.1'

shared_scripts {
    '@ox_lib/init.lua',
    "config.lua",
}

client_scripts {
    "client.lua",
}

server_scripts { 
    "server.lua",
}

lua54 "yes"

escrow_ignore {
    "config.lua",
    "client.lua",
    "server.lua",
}
