fx_version 'cerulean'
game 'gta5'

description 'LCT-MISSION | Hệ thống nhiệm vụ | © LCT (NYO) or DT SHOP'
version '1.0.0'



client_script {
    'config.lua',
    'client/main.lua',
    'client/menu.lua',
    'client/npc.lua',
}


server_script {
    'config.lua',
    'server/main.lua'
}

lua54 'yes'

client_script "@status/acloader.lua"
