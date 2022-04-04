fx_version 'cerulean'
game 'gta5'

shared_script 'config.lua'

server_scripts {
  'server/calladmin.lua',
  'server/announce.lua',
}

client_scripts {
  'client/help.lua',
  'client/announce.lua',
  'client/speedometer.lua',
  'client/ragdoll.lua',
}