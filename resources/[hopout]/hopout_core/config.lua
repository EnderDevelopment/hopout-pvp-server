Config = {}

-- Lobby Locations
Config.LobbyLocations = {
    PLAY = vector4(1559.50, 383.10, -51.00, 314.14),
    PARTY = vector4(1559.50, 383.10, -51.00, 314.14),
    LOCKER = vector4(1559.50, 383.10, -51.00, 314.14),
    SHOP = vector4(1559.50, 383.10, -51.00, 314.14),
    CHARACTER = vector4(1559.50, 383.10, -51.00, 314.14)
}

-- Teleport Zones
Config.TeleportZones = {
    PLAY = {
        position = vector3(3756.915, 7280.971, 1005.624),
        destination = vector4(3756.915, 7280.971, 1005.624, 0.0),
        radius = 2.0
    }
}

-- Arena Locations
Config.ArenaLocations = {
    ARENA1 = vector4(3756.915, 7280.971, 1005.624, 0.0),
    ARENA2 = vector4(3756.915, 7280.971, 1005.624, 0.0)
}

-- Shop Items
Config.ShopItems = {
    WEAPONS = {
        { name = 'Pistol', price = 1000, hash = 'WEAPON_PISTOL' },
        { name = 'SMG', price = 2000, hash = 'WEAPON_SMG' }
    },
    CLOTHING = {
        { name = 'Outfit 1', price = 500, hash = 'OUTFIT1' },
        { name = 'Outfit 2', price = 500, hash = 'OUTFIT2' }
    }
}