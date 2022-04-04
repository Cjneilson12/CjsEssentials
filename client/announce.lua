RegisterCommand("announce", function(source, args)
    TriggerServerEvent("announce", table.concat(args, " "))
end)

RegisterNetEvent("no-perms")
AddEventHandler("no-perms", function()
    TriggerEvent("chatMessage", "[Error]", {255,0,0}, "Sorry, but you don't have permission to do this" )
end)