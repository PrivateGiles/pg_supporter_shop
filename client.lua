local shopPed = nil

local function Debug(...)
    if Config.Debug then
        print('[SupporterShop]', ...)
    end
end

local function SpawnShopPed()
    Debug('Spawning ped at:', Config.Ped.coords)
    
    lib.requestModel(Config.Ped.model, 10000)
    
    if not HasModelLoaded(GetHashKey(Config.Ped.model)) then
        Debug('ERROR: Model failed to load')
        return
    end
    
    local c = Config.Ped.coords
    shopPed = CreatePed(0, GetHashKey(Config.Ped.model), c.x, c.y, c.z - 1.0, c.w, false, true)
    
    if not DoesEntityExist(shopPed) then
        Debug('ERROR: Ped failed to create')
        return
    end
    
    FreezeEntityPosition(shopPed, true)
    SetEntityInvincible(shopPed, true)
    SetBlockingOfNonTemporaryEvents(shopPed, true)
    TaskStartScenarioInPlace(shopPed, Config.Ped.scenario, 0, true)
    
    exports.ox_target:addLocalEntity(shopPed, {
        {
            name = 'supporter_shop',
            icon = Config.TargetIcon,
            label = Config.TargetLabel,
            distance = Config.TargetDistance,
            onSelect = function()
                TriggerServerEvent('supporter_shop:server:open')
            end
        }
    })
    
    Debug('Ped spawned successfully')
end

RegisterNetEvent('supporter_shop:client:open', function()
    Debug('Client received open event')
    -- Try the data table format
    exports.ox_inventory:openInventory('shop', { type = 'supporter_shop' })
end)

CreateThread(function()
    Wait(2000)
    if Config.UsePed then
        SpawnShopPed()
    end
end)

AddEventHandler('onResourceStop', function(res)
    if res == GetCurrentResourceName() and shopPed then
        DeleteEntity(shopPed)
    end
end)

print('[SupporterShop] Client loaded')
