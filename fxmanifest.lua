fx_version 'cerulean'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
game 'rdr3'

description 'smdx-wardrobe'
version '1.0.0'

client_scripts {
    'client/client.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/server.lua'
}

shared_scripts {
    '@smdx-core/shared/locale.lua',
    'locales/en.lua', -- Change this to your preferred language
    'config.lua',
}

dependencies {
    'smdx-core',
    'smdx-appearance',
}

lua54 'yes'
