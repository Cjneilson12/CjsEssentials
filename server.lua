RegisterServerEvent("announce")
AddEventHandler("announce", function(param)

    if IsPlayerAceAllowed(source, "cjsessentials.announce", "cjsessentials") then
        print("^7[^1Announcement^7]^5:" .. param)
        TriggerClientEvent("chatMessage", -1, "^7[^1Announcement^7]^2", {0,0,0}, param)
    else

        TriggerClientEvent("no-perms", source)
    end
end)


function sendToDisc(title, message, footer)
    local embed = {}
    embed = {
        {
            ["color"] = Config.calladmin_color,
            ["title"] = "**" .. title .. "**",
            ["description"] = "" .. message .. "",
            ["footer"] = {
                ["text"] = footer,
            },
        }
    }
    PerformHttpRequest(Config.calladmin_webhook,
        function(err, text, headers) end, 'POST', json.encode({username = name, embeds = embed}), {['Content-Type'] = 'application/json'})
end

RegisterCommand("calladmin", function(source, args, rawCommand)
    message = args[1]
    
    sendToDisc(Config.calladmin_title, table.concat(args, " "), "[" .. source .. "] ")
end)