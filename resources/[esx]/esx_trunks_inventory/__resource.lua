version '1.2.2'

description 'esx_trunks_inventory'

client_scripts {
    'config.lua',
    'client/main.lua'
}

server_scripts {
	'@mysql-async/lib/MySQL.lua',
    'config.lua',
    'server/main.lua',
}
