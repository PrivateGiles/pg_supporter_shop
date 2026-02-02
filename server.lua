local function Debug(...)
    if Config.Debug then
        print('[SupporterShop]', ...)
    end
end

-- Register shop
CreateThread(function()
    Wait(1000)
    
    local shopData = {
        name = Config.ShopName,
        inventory = Config.ShopItems
    }
    
    Debug('Registering shop with data:', json.encode(shopData))
    
    local success, err = pcall(function()
        exports.ox_inventory:RegisterShop('supporter_shop', shopData)
    end)
    
    if success then
        Debug('Shop registered successfully')
    else
        Debug('Shop registration failed:', err)
    end
end)

-- Check Discord role
local function HasAccess(src)
    if GetResourceState('zdiscord') ~= 'started' then
        return false
    end
    for _, roleId in ipairs(Config.AllowedRoles) do
        if exports.zdiscord:isRolePresent(src, roleId) == true then
            return true
        end
    end
    return false
end

-- Handle shop open request
RegisterNetEvent('supporter_shop:server:open', function()
    local src = source
    Debug('Player', src, 'requesting shop')
    
    if HasAccess(src) then
        Debug('Access granted')
        TriggerClientEvent('supporter_shop:client:open', src)
    else
        Debug('Access denied')
        TriggerClientEvent('ox_lib:notify', src, {
            title = Config.ShopName,
            description = Config.Messages.NoAccess,
            type = 'error'
        })
    end
end)

print('[SupporterShop] Server loaded')
