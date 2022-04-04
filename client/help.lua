RegisterCommand('help', function() -- Add as much "msg("Message here") as you want"
    msg("Hello, this is a help command")
    msg("Since this has clearly not been setup ask the owner of the server to setup")
end, false)

function msg(text)
    TriggerEvent("chatMessage",  Config.helpcmd_prefix, Config.helpcmd_color, text)
end