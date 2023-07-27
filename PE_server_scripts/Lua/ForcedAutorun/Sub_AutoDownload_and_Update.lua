 local path = "LocalMods/SubmarineDownloader/Downloaded/"

if CLIENT then return end
if not Game.IsDedicated then
    error("Ошибка, сервер не является выделенным")
    return
end

local function UpdateSubmarines()
    SubmarineInfo.RefreshSavedSubs()
    local toReplace = {}

    for _, subm in pairs(SubmarineInfo.SavedSubmarines) do
        if subm.Type == 0 then
            table.insert(toReplace, subm)
        end
    end

    local files = File.DirSearch(path)

    local extension = ".sub"
    for key, value in pairs(files) do
        if value:sub(-#extension) == extension then
            local submarineInfo = SubmarineInfo(value)
            table.insert(toReplace, submarineInfo)
            SubmarineInfo.AddToSavedSubs(submarineInfo)
        end
    end

    Game.NetLobbyScreen.subs = toReplace

    for _, client in pairs(Client.ClientList) do
        client.LastRecvLobbyUpdate = 0
        Networking.ClientWriteLobby(client)
    end
end

UpdateSubmarines()

Game.AddCommand("UpdateSubmarines", "", function ()
    UpdateSubmarines()
end)