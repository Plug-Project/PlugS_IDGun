game 'gta5'

fx_version 'adamant'
lua54 'yes'

client_scripts {
	'@vrp/client/Tunnel.lua',
	'@vrp/client/Proxy.lua',
	'client.lua'
}

server_scripts {
	"@oxmysql/lib/MySQL.lua",
	'@vrp/lib/utils.lua',
	'server.lua'
}

