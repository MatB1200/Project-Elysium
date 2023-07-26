-- Вписать ID кастомных лодок из мастерской.
-- пример(example): {"2808536198"}
local workshopCollections = {}

-- Зазгрузка лодочек через .sub. 
local path = "LocalMods/SubmarineDownloader/Downloaded/"

if CLIENT then return end

if not Game.IsDedicated then
    error("Ошибка, сервер не является выделенным")
    return
end

local function UpdateSubmarines()
    SubmarineInfo.RefreshSavedSubs()
    local toReplace = {}

    for _, sub in pairs(SubmarineInfo.SavedSubmarines) do
        if sub.Type == 0 then
            table.insert(toReplace, sub)
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

local itemsBeingDownloaded = 0
local itemsDownloaded = 0

local function UpdateItem(id)
    Steam.GetWorkshopItem(UInt64(id), function (item)
        if item == nil then
            print(string.format("Ошибка в поиске лодки id - %s.", id))
            return
        end

        print(string.format("Скачивание последней версии '%s'...", item.Title))

        Steam.DownloadWorkshopItem(item, path .. id, function (downloadedItem)
            itemsDownloaded = itemsDownloaded + 1
            print(string.format("(%s/%s) '%s' was успешно скачано %s", itemsDownloaded, itemsBeingDownloaded, downloadedItem.Title, path .. id))

            if itemsDownloaded == itemsBeingDownloaded then
                print("Обновление списка лодок.")
                UpdateSubmarines()
            end
        end)
    end)
end

local function UpdateAllItems()
    if File.DirectoryExists(path) then
        File.DeleteDirectory(path)
    end

    itemsBeingDownloaded = 0
    itemsDownloaded = 0

    for key, collection in pairs(workshopCollections) do
        Steam.GetWorkshopItem(collection, function (item)
            Steam.GetWorkshopCollection(collection, function (items)
                print(string.format("Обновление %s библиотек для колекций '%s'", #items, item.Title))
                for key, value in pairs(items) do
                    UpdateItem(value)
                    itemsBeingDownloaded = itemsBeingDownloaded + 1
                end
            end)
        end)
    end
end

Game.AddCommand("updateworkshop", "", function ()
    UpdateAllItems()
end)

if ExecutionNumber == 0 then -- перезагружает луа, и обновляет список
    Timer.Wait(function ()
        UpdateAllItems()
    end, 5000)
end