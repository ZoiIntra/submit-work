local HttpService = game:GetService("HttpService")
local requestt = http_request or request or syn.request
local web_aurl = 'https://discord.com/api/webhooks/' --ใส่ลิ้งค์เว็ปฮุกด้วย
local Path = "http://www.roblox.com/asset/?id="
local headers = {
    ["Content-Type"] = "application/json"
}
function Webhook()
    local data = {
        ["embeds"] = {
            {
                ["title"] = "\224\185\129\224\184\136\224\185\137\224\184\135\224\185\128\224\184\149\224\184\183\224\184\173\224\184\153\224\184\132\224\184\153\224\184\163\224\184\177\224\184\153\224\184\170\224\184\132\224\184\163\224\184\180\224\184\155\224\184\149\224\185\140",
                ["type"] = "rich",
                ["color"] = tonumber(0x58b9ff),
                ["fields"] = {
                    {
                        ["name"] = 'Name',
                        ["value"] = "```"..game:GetService("Players").LocalPlayer.Name.."```",
                        ["inline"] = false
                    },
                    {
                        ["name"] = 'Game',
                        ["value"] = "```"..game.PlaceId.."```",
                        ["inline"] = false
                    },
                    {
                        ["name"] = 'JobId',
                        ["value"] = "```"..game.JobId.."```",
                        ["inline"] = false
                    },
                }
            }
        }
    }
    local newdata = HttpService:JSONEncode(data)
    requestt({Url = web_aurl, Body = newdata, Method = "POST", Headers = headers})
end
Webhook()
