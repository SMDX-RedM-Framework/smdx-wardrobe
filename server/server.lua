local SMDXCore = exports['smdx-core']:GetSMDX()

-----------------------------------------------------------------------
-- version checker
-----------------------------------------------------------------------
local function versionCheckPrint(_type, log)
    local color = _type == 'success' and '^2' or '^1'

    print(('^1['..GetCurrentResourceName()..']%s %s^7'):format(color, log))
end

local function CheckVersion()
    PerformHttpRequest('', function(err, text, headers)
        local currentVersion = GetResourceMetadata(GetCurrentResourceName(), 'version')

        if not text then 
            versionCheckPrint('error', 'Currently unable to run a version check.')
            return 
        end

        --versionCheckPrint('success', ('Current Version: %s'):format(currentVersion))
        --versionCheckPrint('success', ('Latest Version: %s'):format(text))
        
        if text == currentVersion then
            versionCheckPrint('success', 'You are running the latest version.')
        else
            versionCheckPrint('error', ('You are currently running an outdated version, please update to version %s'):format(text))
        end
    end)
end

-----------------------------------------------------------------------

SMDXCore.Functions.CreateCallback('smdx-wardrobe:server:getPlayerSkin', function(source, cb)
    local src = source
    local Player = SMDXCore.Functions.GetPlayer(src)
    local cid = Player.PlayerData.citizenid
    local skins = MySQL.Sync.fetchAll('SELECT * FROM playerskins WHERE citizenid = ?', {cid})
    cb(skins[1])
end)

SMDXCore.Commands.Add("undress", "removes all clothing", {}, false, function(source)
    local src = source
    local Player = SMDXCore.Functions.GetPlayer(src)
    local jailed = Player.PlayerData.metadata['injail']

    if jailed > 0 then return end

    TriggerClientEvent('smdx-wardrobe:client:removeAllClothing', src)
end)

SMDXCore.Commands.Add("hat", "hat on/off", {}, false, function(source)
    local src = source
    TriggerClientEvent('smdx-wardrobe:client:OnOffClothing', src, "hat")
end)

SMDXCore.Commands.Add("shirt", "shirt on/off", {}, false, function(source)
    local src = source
    TriggerClientEvent('smdx-wardrobe:client:OnOffClothing', src, "shirt")
end)

SMDXCore.Commands.Add("pants", "pants on/off", {}, false, function(source)
    local src = source
    TriggerClientEvent('smdx-wardrobe:client:OnOffClothing', src, "pants")
end)

SMDXCore.Commands.Add("boots", "boots on/off", {}, false, function(source)
    local src = source
    TriggerClientEvent('smdx-wardrobe:client:OnOffClothing', src, "boots")
end)

SMDXCore.Commands.Add("coat", "coat on/off", {}, false, function(source)
    local src = source
    TriggerClientEvent('smdx-wardrobe:client:OnOffClothing', src, "coats")
end)

SMDXCore.Commands.Add("closedcoat", "closed coat on/off", {}, false, function(source)
    local src = source
    TriggerClientEvent('smdx-wardrobe:client:OnOffClothing', src, "closedcoats")
end)

SMDXCore.Commands.Add("gloves", "gloves on/off", {}, false, function(source)
    local src = source
    TriggerClientEvent('smdx-wardrobe:client:OnOffClothing', src, "glove")
end)

SMDXCore.Commands.Add("poncho", "ponchos on/off", {}, false, function(source)
    local src = source
    TriggerClientEvent('smdx-wardrobe:client:OnOffClothing', src, "ponchos")
end)

SMDXCore.Commands.Add("vest", "vest on/off", {}, false, function(source)
    local src = source
    TriggerClientEvent('smdx-wardrobe:client:OnOffClothing', src, "vest")
end)

SMDXCore.Commands.Add("sleeve", "sleeve shirt on/off", {}, false, function(source)
    local src = source
    TriggerClientEvent('smdx-wardrobe:client:OnOffClothing', src, "sleeve")
end)

SMDXCore.Commands.Add("eyewear", "eyewear on/off", {}, false, function(source)
    local src = source
    TriggerClientEvent('smdx-wardrobe:client:OnOffClothing', src, "eyewear")
end)

SMDXCore.Commands.Add("belt", "belts on/off", {}, false, function(source)
    local src = source
    TriggerClientEvent('smdx-wardrobe:client:OnOffClothing', src, "belts")
end)

SMDXCore.Commands.Add("cloak", "cloaks on/off", {}, false, function(source)
    local src = source
    TriggerClientEvent('smdx-wardrobe:client:OnOffClothing', src, "cloaks")
end)

SMDXCore.Commands.Add("chaps", "chaps on/off", {}, false, function(source)
    local src = source
    TriggerClientEvent('smdx-wardrobe:client:OnOffClothing', src, "chaps")
end)

SMDXCore.Commands.Add("mask", "masks on/off", {}, false, function(source)
    local src = source
    TriggerClientEvent('smdx-wardrobe:client:OnOffClothing', src, "masks")
end)

SMDXCore.Commands.Add("neckwear", "neckwear on/off", {}, false, function(source)
    local src = source
    TriggerClientEvent('smdx-wardrobe:client:OnOffClothing', src, "neckwear")
end)

SMDXCore.Commands.Add("accessories", "accessories on/off", {}, false, function(source)
    local src = source
    TriggerClientEvent('smdx-wardrobe:client:OnOffClothing', src, "accessories")
end)

SMDXCore.Commands.Add("gauntlets", "gauntlets on/off", {}, false, function(source)
    local src = source
    TriggerClientEvent('smdx-wardrobe:client:OnOffClothing', src, "gauntlets")
end)

SMDXCore.Commands.Add("neckties", "neckties on/off", {}, false, function(source)
    local src = source
    TriggerClientEvent('smdx-wardrobe:client:OnOffClothing', src, "neckties")
end)

SMDXCore.Commands.Add("loadouts", "loadouts on/off", {}, false, function(source)
    local src = source
    TriggerClientEvent('smdx-wardrobe:client:OnOffClothing', src, "loadouts")
end)

SMDXCore.Commands.Add("suspenders", "suspenders on/off", {}, false, function(source)
    local src = source
    TriggerClientEvent('smdx-wardrobe:client:OnOffClothing', src, "suspenders")
end)

SMDXCore.Commands.Add("satchels", "satchels on/off", {}, false, function(source)
    local src = source
    TriggerClientEvent('smdx-wardrobe:client:OnOffClothing', src, "satchels")
end)

SMDXCore.Commands.Add("gunbelt", "gunbelt on/off", {}, false, function(source)
    local src = source
    TriggerClientEvent('smdx-wardrobe:client:OnOffClothing', src, "gunbelts")
end)

SMDXCore.Commands.Add("buckle", "buckles on/off", {}, false, function(source)
    local src = source
    TriggerClientEvent('smdx-wardrobe:client:OnOffClothing', src, "buckles")
end)

SMDXCore.Commands.Add("skirt", "skirts on/off", {}, false, function(source)
    local src = source
    TriggerClientEvent('smdx-wardrobe:client:OnOffClothing', src, "skirts")
end)

SMDXCore.Commands.Add("armor", "armor on/off", {}, false, function(source)
    local src = source
    TriggerClientEvent('smdx-wardrobe:client:OnOffClothing', src, "armor")
end)

SMDXCore.Commands.Add("hairaccessories", "hair accessories on/off", {}, false, function(source)
    local src = source
    TriggerClientEvent('smdx-wardrobe:client:OnOffClothing', src, "hair_accessories")
end)

SMDXCore.Commands.Add("leftring", "left rings on/off", {}, false, function(source)
    local src = source
    TriggerClientEvent('smdx-wardrobe:client:OnOffClothing', src, "jewelry_rings_left")
end)

SMDXCore.Commands.Add("rightring", "right rings on/off", {}, false, function(source)
    local src = source
    TriggerClientEvent('smdx-wardrobe:client:OnOffClothing', src, "jewelry_rings_right")
end)

SMDXCore.Commands.Add("leftholster", "left holster on/off", {}, false, function(source)
    local src = source
    TriggerClientEvent('smdx-wardrobe:client:OnOffClothing', src, "holster_left")
end)

SMDXCore.Commands.Add("collar1", "collar with sleeves up", {}, false, function(source)
    local src = source
    TriggerClientEvent('smdx-wardrobe:client:OnOffClothing', src, "collar1")
end)

SMDXCore.Commands.Add("collar2", "collar with sleeves down", {}, false, function(source)
    local src = source
    TriggerClientEvent('smdx-wardrobe:client:OnOffClothing', src, "collar2")
end)

SMDXCore.Commands.Add("dress", "Wear all clothing", {}, false, function(source)
    local src = source
    local Player = SMDXCore.Functions.GetPlayer(src)
    local jailed = Player.PlayerData.metadata['injail']

    if jailed > 0 then return end

    local citizenid = Player.PlayerData.citizenid
    local _clothes =  MySQL.Sync.fetchAll('SELECT * FROM playerskins WHERE citizenid = ?', { citizenid })

    if _clothes[1] then
        _clothes = json.decode(_clothes[1].clothes)
    else
        _clothes = {}
    end

    if _clothes then
        TriggerClientEvent("smdx-clothes:ApplyClothes", src, _clothes)
    end
end)

--------------------------------------------------------------------------------------------------
-- start version check
--------------------------------------------------------------------------------------------------
CheckVersion()
