Config = {}

-- Discord Role IDs that can access the shop
Config.AllowedRoles = {
    '1443621576904802364', -- Gold Supporter
    '1443621454322208849', -- Silver Supporter
}

-- Shop name
Config.ShopName = 'Supporter Shop'

-- Shop items
Config.ShopItems = {
    { name = 'outfit_bag', price = 5000 },
    { name = 'boombox', price = 5000 },
}

-- Ped settings
Config.UsePed = true
Config.Ped = {
    model = 'cs_orleans',
    coords = vector4(392.6847, -831.6826, 29.2917, 232.8787),
    scenario = 'WORLD_HUMAN_STAND_IMPATIENT'
}

-- Target
Config.TargetDistance = 2.5
Config.TargetLabel = 'Open Peak Supporter Shop'
Config.TargetIcon = 'fas fa-shopping-cart'

-- Messages
Config.Messages = {
    NoAccess = 'You need to be a Gold or Silver Tebex Supporter to access this shop!',
}

Config.Debug = false
