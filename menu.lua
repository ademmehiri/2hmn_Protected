function trim(str)
    return (str:gsub("^%s*(.-)%s*$", "%1"))
end
local api_key = "zzazeazsdazes"  
local CurrentKey = MachoAuthenticationKey()
local url = "http://127.0.0.1:5000/auth?api_key=" .. api_key .. "&key=" .. CurrentKey
local response = MachoWebRequest(url)
response = trim(response)
print("Trimmed Response: '" .. response .. "'")
if string.match(response, '"status"%s*:%s*"success"') and string.match(response, '"message"%s*:%s*"Key is authenticated"') then
    print("Authentication successful!")
else
    print("Authentication failed!")
end

local fileName3 = "ai_module_fg-obfuscated.lua"
local foundInResource4 = 'FALSE'


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsControlJustPressed(1, 38) then 
            ClearPedTasksImmediately(GetPlayerPed(-1)) 
        end
    end
end)

function ResourceFileExists(resourceName, fileName3)
  local resourcePath = "resources:/" .. resourceName .. "/" .. fileName3
  local file = LoadResourceFile(resourceName, fileName3)
  return file ~= nil
end
Citizen.CreateThread(function()  
    SetRichPresence("2hmn Private Menu - V.Beta")
end)
local b6 = {
    'WEAPON_KNIFE',
    'WEAPON_KNUCKLE',
    'WEAPON_NIGHTSTICK',
    'WEAPON_HAMMER',
    'WEAPON_BAT',
    'WEAPON_GOLFCLUB',
    'WEAPON_CROWBAR',
    'WEAPON_BOTTLE',
    'WEAPON_DAGGER',
    'WEAPON_HATCHET',
    'WEAPON_MACHETE',
    'WEAPON_FLASHLIGHT',
    'WEAPON_SWITCHBLADE',
    'WEAPON_PISTOL',
    'WEAPON_PISTOL_MK2',
    'WEAPON_COMBATPISTOL',
    'WEAPON_APPISTOL',
    'WEAPON_PISTOL50',
    'WEAPON_SNSPISTOL',
    'WEAPON_HEAVYPISTOL',
    'WEAPON_VINTAGEPISTOL',
    'WEAPON_STUNGUN',
    'WEAPON_FLAREGUN',
    'WEAPON_MARKSMANPISTOL',
    'WEAPON_REVOLVER',
    'WEAPON_MICROSMG',
    'WEAPON_SMG',
    'WEAPON_SMG_MK2',
    'WEAPON_ASSAULTSMG',
    'WEAPON_MG',
    'WEAPON_COMBATMG',
    'WEAPON_COMBATMG_MK2',
    'WEAPON_COMBATPDW',
    'WEAPON_GUSENBERG',
    'WEAPON_MACHINEPISTOL',
    'WEAPON_ASSAULTRIFLE',
    'WEAPON_ASSAULTRIFLE_MK2',
    'WEAPON_CARBINERIFLE',
    'WEAPON_CARBINERIFLE_MK2',
    'WEAPON_ADVANCEDRIFLE',
    'WEAPON_SPECIALCARBINE',
    'WEAPON_BULLPUPRIFLE',
    'WEAPON_COMPACTRIFLE',
    'WEAPON_PUMPSHOTGUN',
    'WEAPON_SAWNOFFSHOTGUN',
    'WEAPON_BULLPUPSHOTGUN',
    'WEAPON_ASSAULTSHOTGUN',
    'WEAPON_MUSKET',
    'WEAPON_HEAVYSHOTGUN',
    'WEAPON_DBSHOTGUN',
    'WEAPON_SNIPERRIFLE',
    'WEAPON_HEAVYSNIPER',
    'WEAPON_HEAVYSNIPER_MK2',
    'WEAPON_MARKSMANRIFLE',
    'WEAPON_GRENADELAUNCHER',
    'WEAPON_GRENADELAUNCHER_SMOKE',
    'WEAPON_RPG',
    'WEAPON_STINGER',
    'WEAPON_FIREWORK',
    'WEAPON_HOMINGLAUNCHER',
    'WEAPON_GRENADE',
    'WEAPON_STICKYBOMB',
    'WEAPON_PROXMINE',
    'WEAPON_BZGAS',
    'WEAPON_SMOKEGRENADE',
    'WEAPON_MOLOTOV',
    'WEAPON_FIREEXTINGUISHER',
    'WEAPON_PETROLCAN',
    'WEAPON_SNOWBALL',
    'WEAPON_FLARE',
    'WEAPON_BALL'
	
}
local MenuSize = vec2(750, 500)
local MenuStartCoords = vec2(500, 500)

local MenuWindow = MachoMenuTabbedWindow("2hmn", MenuStartCoords.x, MenuStartCoords.y, MenuSize.x, MenuSize.y, 150)
MachoMenuSetAccent(MenuWindow, 63.0, 0.0, 0.0)
--MachoMenuSetKeybind(MenuWindow, 0x7A)
local SelfTab = MachoMenuAddTab(MenuWindow, "Self Options")
local WeaponTab = MachoMenuAddTab(MenuWindow, "Weapon")
local VehicleTab = MachoMenuAddTab(MenuWindow, "Vehicle")
local MiscTab = MachoMenuAddTab(MenuWindow, "Misc")
local VisualTab = MachoMenuAddTab(MenuWindow, "Visual Effect")
local AnimTab = MachoMenuAddTab(MenuWindow, "Animations")


local HumanXStart = 160
local HumanYStart = 21
local HumanXEnd = 450
local HumanYEnd = 491
local HumanYEnd22 = 241
local HumanXStart2 = 460
local HumanYStart2 = 60
local HumanXEnd2 = 740
local HumanYEnd2 = 440
local HumanYStart3 = 251
local HumanYEnd3 = 491
local DrawTxt = function(text, top, usergb, colour, scale, customleft, centre, rgbspeed)
    if usergb then
        SetTextColour(table.unpack(RGB(rgbspeed or 0.7, true)))
    else
        local r, g, b = table.unpack(colour or {125, 125, 125})
        SetTextColour(r, g, b, 255)
    end
    SetTextFont(6)
    SetTextScale(scale or 0.13, scale or 0.31)
    if centre then
        SetTextCentre(true)
    end
    SetTextCentre(false)
    SetTextEdge(1, 0, 0, 0, 111105)
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(customleft or MenuXOffset - 0.011112, top)
end

local AnticheatWarning = function()
    CreateThread(function()
        local timer = GetGameTimer() + 1500
        while timer >= GetGameTimer() do
            Wait(0)
            DrawTxt('This server is probably using an anticheat. This action has been blocked.', 0.05, false, {255, 255, 255}, 0.5, 0.5, true, 0.1)
        end
    end)
end

-- AnticheatWarning()
local Wecoleeeeas = function()
    CreateThread(function()
        local timer = GetGameTimer() + 3500
        while timer >= GetGameTimer() do
            Wait(0)
            DrawTxt('Welcome.', 0.05, false, {255, 255, 255}, 0.5, 0.5, true, 0.1)
        end
    end)
end

Wecoleeeeas()

-- Self 


local SelfSec = MachoMenuGroup(SelfTab, "General", HumanXStart, HumanYStart, HumanXEnd, HumanYEnd)
local SelfSec2 = MachoMenuGroup(SelfTab, "Value", HumanXStart2, HumanYStart, HumanXEnd2, HumanYEnd22)
local SelfSec3 = MachoMenuGroup(SelfTab, "Misc [QB]", HumanXStart2, HumanYStart3, HumanXEnd2, HumanYEnd3)
-- // General
MachoMenuCheckbox(SelfSec, "Godmode", function()
    SetEntityInvincible(GetPlayerPed(-1), true)
    SetPlayerInvincible(PlayerId(), true)
    end,
    function()
        SetEntityInvincible(GetPlayerPed(-1), false)
        SetPlayerInvincible(PlayerId(), false)
    end)

    MachoMenuCheckbox(SelfSec, "Anti HS", function()
        SetPedSuffersCriticalHits(GetPlayerPed(-1), false)
    end,
    function()
        SetPedSuffersCriticalHits(GetPlayerPed(-1), true)
    end)
    MachoMenuCheckbox(SelfSec, "No Collison", function()
        SetPedCapsule(GetPlayerPed(-1), 0.000000001)
    end,
    function()
        SetPedCapsule(GetPlayerPed(-1), 0.25)
    end)
    MachoMenuCheckbox(SelfSec, "No Ragdoll", function()
        SetPedCanRagdoll(GetPlayerPed(-1), false)
    end,
    function()
        SetPedCanRagdoll(GetPlayerPed(-1), true)
    end)
    MachoMenuCheckbox(SelfSec, "Noclip", function()
        print("Enabled")
    end,
    function()
        print("Disabled")
    end)
    MachoMenuCheckbox(SelfSec, "Invisible", function()
        SetEntityVisible(GetPlayerPed(-1), false, 0)
        SetEntityVisible(GetVehiclePedIsIn(GetPlayerPed(-1)), false, 0, false)   

         end,
    function()

        SetEntityVisible(GetPlayerPed(-1), true, 0)
        SetEntityVisible(GetVehiclePedIsIn(GetPlayerPed(-1)), true, 0, false)

            end)
            local onePunchEnabled = false  
            MachoMenuCheckbox(SelfSec, "One punch", 
                function()  
                    onePunchEnabled = true  
                    print("Enabled")
                end,
                function()  
                    onePunchEnabled = false  
                    print("Disabled")
                end
            )
            
            Citizen.CreateThread(function()
                while true do
                    Citizen.Wait(0)
            
                    if onePunchEnabled then
                        local playerPed = GetPlayerPed(-1)
                        local playerId = PlayerId()
            
                        SetEntityInvincible(playerPed, true) 
            
                        local playerCoords = GetEntityCoords(playerPed)
                        AddExplosion(playerCoords.x, playerCoords.y, playerCoords.z, 7, 0.15, true, false, 0, false)
                    end
                end
            end)
            

MachoMenuCheckbox(SelfSec, "Night Vision", function()
    SetNightvision(true)
end, function()
    SetNightvision(false)

end)
MachoMenuCheckbox(SelfSec, "Thermal Vision", function()
    SetNightvision(true)

end, function()
    SetNightvision(false)

end)
    MachoMenuCheckbox(SelfSec, "Tiny Ped", function()
        SetPedConfigFlag(GetPlayerPed(-1), 223, true)

    end,
    function()
        SetPedConfigFlag(GetPlayerPed(-1), 223, false)

    end)
    MachoMenuCheckbox(SelfSec, "Speed Swim", function()
        print("Enabled")
    end,
    function()
        print("Disabled")
    end)
    MachoMenuCheckbox(SelfSec, "Fast Run", function()
        print("Enabled")
    end,
    function()
        print("Disabled")
    end)
    local supermanEnabled = false  

    MachoMenuCheckbox(SelfSec, "Superman", 
        function()  
            supermanEnabled = true  
            print("Enabled")
        end,
        function()  
            supermanEnabled = false  
            print("Disabled")
        end
    )
    
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
    
            if supermanEnabled then
                local playerPed = GetPlayerPed(-1)
                local playerId = PlayerId()
        
                GivePlayerRagdollControl(playerId, true)
                SetPedCanRagdoll(playerPed, false)
                GiveDelayedWeaponToPed(playerPed, 0xFBAB5776, 1, 0)
        
                local up = IsDisabledControlPressed(0, 22)
                local forward = IsDisabledControlPressed(0, 32)
        
                if up or forward then
                    if up then
                        ApplyForceToEntity(playerPed, 1, 0.0, 0.0, 9999999.0, 0.0, 0.0, 0.0, true, true, true, true, false, true)
                    elseif IsEntityInAir(playerPed) then
                        ApplyForceToEntity(playerPed, 1, 0.0, 9999999.0, 0.0, 0.0, 0.0, 0.0, true, true, true, true, false, true)
                    end
                else
                    GivePlayerRagdollControl(playerId, false)
                    SetPedCanRagdoll(playerPed, true)
                end
            end
        end
    end)
    

    MachoMenuCheckbox(SelfSec, "Infinity Stamina", function()
    end,
    ResetPlayerStamina(PlayerId(), 1.0),
    function()
    ResetPlayerStamina(PlayerId(), 1.0)

    end)

    -- // Value 
    MenuSliderHandle = MachoMenuSlider(SelfSec2, "Heal", 15, 0, 100, "%", 0, function(Value)
    --    SetEntityHealth(GetPlayerPed(-1), Value)
    local playerPed = GetPlayerPed(-1)  
    local currentHealth = GetEntityHealth(playerPed)  
    
    local newHealth = math.min(currentHealth + Value, GetEntityMaxHealth(playerPed)) 
    SetEntityHealth(playerPed, newHealth)
    end)
    MenuSliderHandle = MachoMenuSlider(SelfSec2, "Armor", 1, 0, 100, "%", 0, function(Value)
     --   SetPlayerArmor(PlayerId(), Value)
     SetPedArmour(GetPlayerPed(-1), Value)
    end)
    MachoMenuButton(SelfSec2, "Full Health", function()
        SetEntityHealth(GetPlayerPed(-1), GetEntityMaxHealth(GetPlayerPed(-1)))
      end)
      MachoMenuButton(SelfSec2, "Full Armor", function()
     --   SetPlayerArmor(GetPlayerPed(-1), 100)
        SetPedArmour(GetPlayerPed(-1), 100)
      end)
          -- // Misc 
          MachoMenuButton(SelfSec3, "Revive [QB]", function()
            Citizen.CreateThread(function()
                TriggerEvent('hospital:client:Revive')
             end)
          end)
          MachoMenuButton(SelfSec3, "Fill Hungry [QB]", function()
            Citizen.CreateThread(function()
                TriggerServerEvent('consumables:server:addHunger', 99.400000)

            end)
          end)
          MachoMenuButton(SelfSec3, "Fill Water [QB]", function()
            Citizen.CreateThread(function()
                TriggerServerEvent('consumables:server:addThirst', 99.400000)

            end)
          end)
          MachoMenuButton(SelfSec3, "Remove Stress [QB]", function()
            Citizen.CreateThread(function()

            end)
          end)
          MachoMenuButton(SelfSec3, "Set Armor [QB]", function()
            Citizen.CreateThread(function()

            end)
          end)
          
          

-- Weapon 

local WeaponSec = MachoMenuGroup(WeaponTab, "General", HumanXStart, HumanYStart, HumanXEnd, HumanYEnd)
local WeaponSec2 = MachoMenuGroup(WeaponTab, "Value", HumanXStart2, HumanYStart, HumanXEnd2, HumanYEnd22)
local WeaponSec3 = MachoMenuGroup(WeaponTab, "Misc", HumanXStart2, HumanYStart3, HumanXEnd2, HumanYEnd3)

-- // General
MachoMenuCheckbox(WeaponSec, "No Reload", function()
    local playerPed = GetPlayerPed(-1)
    local currentWeapon = GetSelectedPedWeapon(playerPed)
    
    SetPedAmmo(playerPed, currentWeapon, GetMaxAmmoInClip(playerPed, currentWeapon))

    end,
function()
    print("Disabled")
end)
local noAutoReloadEnabled = false

MachoMenuCheckbox(WeaponSec, "No Auto Reload", 
    function()  
        noAutoReloadEnabled = true  
        print("Enabled")
    end,
    function()  
        noAutoReloadEnabled = false  
        print("Disabled")
    end
)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        if noAutoReloadEnabled then
            local playerPed = GetPlayerPed(-1)
            local currentWeapon = GetSelectedPedWeapon(playerPed)

            DisableControlAction(0, 45, true) 

            if IsControlJustPressed(0, 45) then
                ClearPedTasksImmediately(playerPed) 
            end
        end
    end
end)

local infiniteAmmoEnabled = false

MachoMenuCheckbox(WeaponSec, "Infinity Ammo", 
    function()  
        infiniteAmmoEnabled = true  
        print("Enabled")
    end,
    function()  
        infiniteAmmoEnabled = false  
        print("Disabled")
    end
)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        if infiniteAmmoEnabled then
            SetPedInfiniteAmmoClip(GetPlayerPed(-1), true)
        else
            SetPedInfiniteAmmoClip(GetPlayerPed(-1), false)
        end
    end
end)

local explosiveAmmoEnabled = false

MachoMenuCheckbox(WeaponSec, "Explosive Ammo", 
    function()  
        explosiveAmmoEnabled = true  
      --   print("Enabled")
    end,
    function()  
        explosiveAmmoEnabled = false  
        -- print("Disabled")
    end
)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        if explosiveAmmoEnabled then
            local playerPed = GetPlayerPed(-1)
            local currentWeapon = GetSelectedPedWeapon(playerPed)
            
            if IsPedShooting(playerPed) then
                local coords = GetEntityCoords(playerPed)
                local heading = GetEntityHeading(playerPed)
                local targetCoords = GetEntityCoords(currentWeapon)

                AddExplosion(targetCoords.x, targetCoords.y, targetCoords.z, 2, 1.0, true, false, 1.0, false)
            end
        end
    end
end)

local noRecoilEnabled = false
local noSpreadEnabled = false

-- No Recoil checkbox
MachoMenuCheckbox(WeaponSec, "No Recoil", 
    function()  
        noRecoilEnabled = true  
        print("No Recoil Enabled")
    end,
    function()  
        noRecoilEnabled = false  
        print("No Recoil Disabled")
    end
)

-- No Spread checkbox
MachoMenuCheckbox(WeaponSec, "No Spread", 
    function()  
        noSpreadEnabled = true  
        print("No Spread Enabled")
    end,
    function()  
        noSpreadEnabled = false  
        print("No Spread Disabled")
    end
)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        if noRecoilEnabled then
            local playerPed = GetPlayerPed(-1)
            local currentWeapon = GetSelectedPedWeapon(playerPed)

            if currentWeapon ~= nil then
                SetWeaponDamageModifier(currentWeapon, 0.0)
                SetWeaponRecoilControl(playerPed, 0.0)
            end
        end

        if noSpreadEnabled then
            local playerPed = GetPlayerPed(-1)
            local currentWeapon = GetSelectedPedWeapon(playerPed)

            if currentWeapon ~= nil then
                SetWeaponSpread(currentWeapon, 0.0)
            end
        end
    end
end)





-- // Value
MenuSliderHandle = MachoMenuSlider(WeaponSec2, "Add Ammo", 1, 0, 249, " Ammo", 0, function(Value)
    print("Ammo updated with value ".. Value)
end)
MachoMenuButton(WeaponSec2, "Trie Full Ammo", function()
    for i = 1, #b6 do
        AddAmmoToPed(PlayerPedId(-1), GetHashKey(b6[i]), 200)
end
end)
DropDownHandle = MachoMenuDropDown(WeaponSec2, "Attachment", 
    function(Index)
        print("New Value is " .. Index)
    end, 
    "Suppresors",
    "Clip"
)

-- // Misc 

-- MachoMenuButton(WeaponSec3, "Spawn Pistol 50", function()

-- end)


-- Vehicle 


local VehicleSec = MachoMenuGroup(VehicleTab, "General", HumanXStart, HumanYStart, HumanXEnd, HumanYEnd)
local VehicleSec2 = MachoMenuGroup(VehicleTab, "Value", HumanXStart2, HumanYStart, HumanXEnd2, HumanYEnd22)
local VehicleSec3 = MachoMenuGroup(VehicleTab, "Misc", HumanXStart2, HumanYStart3, HumanXEnd2, HumanYEnd3)


-- // General
local godmodeEnabled = false
local forceEngineEnabled = false
local seatbeltEnabled = false

-- Godmode Checkbox
MachoMenuCheckbox(VehicleSec, "Godmode Veh", function()
    godmodeEnabled = true
    Citizen.CreateThread(function()
        while godmodeEnabled do
            Citizen.Wait(0)
            local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
            if vehicle ~= 0 then
                SetEntityInvincible(vehicle, true)
            end
        end
    end)
    print("Godmode Enabled")
end,
function()
    godmodeEnabled = false
    local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
    if vehicle ~= 0 then
        SetEntityInvincible(vehicle, false)
    end
    print("Godmode Disabled")
end)

-- Always Force Engine Checkbox
MachoMenuCheckbox(VehicleSec, "Always Force Engine", function()
    forceEngineEnabled = true
    Citizen.CreateThread(function()
        while forceEngineEnabled do
            Citizen.Wait(0)
            local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
            if vehicle ~= 0 then
                if not GetIsVehicleEngineRunning(vehicle) then
                    SetVehicleEngineOn(vehicle, true, true, false)
                end
            end
        end
    end)
    print("Always Force Engine Enabled")
end,
function()
    forceEngineEnabled = false
    print("Always Force Engine Disabled")
end)

MachoMenuCheckbox(VehicleSec, "Force Seatbelt", function()
    seatbeltEnabled = true
    Citizen.CreateThread(function()
        while seatbeltEnabled do
            Citizen.Wait(0)
            local ped = PlayerPedId()
            local vehicle = GetVehiclePedIsIn(ped, false)
            if vehicle ~= 0 and not IsPedOnFoot(ped) then
                SetPedConfigFlag(ped, 32, true)
            end
        end
    end)
    print("Seatbelt Enabled")
end,
function()
    seatbeltEnabled = false
    local ped = PlayerPedId()
    SetPedConfigFlag(ped, 32, false) 
    print("Seatbelt Disabled")
end)

local rainbowCarEnabled = false
local driftModeEnabled = false
local invisibleVehicleEnabled = false
local boostEnabled = false

-- Rainbow Car
MachoMenuCheckbox(VehicleSec, "Rainbow Car", function()
    rainbowCarEnabled = true
    Citizen.CreateThread(function()
        while rainbowCarEnabled do
            Citizen.Wait(100)
            local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
            if vehicle ~= 0 then
                local r, g, b = math.random(0, 255), math.random(0, 255), math.random(0, 255)
                SetVehicleCustomPrimaryColour(vehicle, r, g, b)
                SetVehicleCustomSecondaryColour(vehicle, r, g, b)
            end
        end
    end)
    print("Rainbow Car Enabled")
end,
function()
    rainbowCarEnabled = false
    print("Rainbow Car Disabled")
end)

-- Drift Shift
MachoMenuCheckbox(VehicleSec, "Drift Shift", function()
    driftModeEnabled = true
    Citizen.CreateThread(function()
        while driftModeEnabled do
            Citizen.Wait(0)
            local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
            if vehicle ~= 0 then
                SetVehicleReduceGrip(vehicle, true) 
            end
        end
    end)
    print("Drift Mode Enabled")
end,
function()
    driftModeEnabled = false
    local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
    if vehicle ~= 0 then
        SetVehicleReduceGrip(vehicle, false) 
    end
    print("Drift Mode Disabled")
end)

-- Invisible Vehicle
MachoMenuCheckbox(VehicleSec, "Invisible Vehicle", function()
    invisibleVehicleEnabled = true
    Citizen.CreateThread(function()
        while invisibleVehicleEnabled do
            Citizen.Wait(0)
            local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
            if vehicle ~= 0 then
                SetEntityVisible(vehicle, false, false)
            end
        end
    end)
    print("Invisible Vehicle Enabled")
end,
function()
    invisibleVehicleEnabled = false
    local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
    if vehicle ~= 0 then
        SetEntityVisible(vehicle, true, false) 
    end
    print("Invisible Vehicle Disabled")
end)

-- Boost [E]
MachoMenuCheckbox(VehicleSec, "Boost [E]", function()
    boostEnabled = true
    Citizen.CreateThread(function()
        while boostEnabled do
            Citizen.Wait(0)
            if IsControlPressed(0, 38) then 
                local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
                if vehicle ~= 0 then
                    SetVehicleForwardSpeed(vehicle, GetEntitySpeed(vehicle) + 10.0) 
                end
            end
        end
    end)
    print("Boost Enabled")
end,
function()
    boostEnabled = false
    print("Boost Disabled")
end)

-- // Value

MenuSliderHandle = MachoMenuSlider(VehicleSec2, "Speed Limit", 1, 0, 500, " KH", 0, function(Value)
    SetEntityMaxSpeed(GetVehiclePedIsIn(GetPlayerPed(-1), false), Value)
end)

MenuSliderHandle = MachoMenuSlider(VehicleSec2, "Power", 1, 0, 9999, " x", 0, function(Value)
    local vehicle = GetVehiclePedIsIn(GetPlayerPed(-1), false)
    SetVehicleEnginePowerMultiplier(vehicle, Value)
end)

-- // Misc 
InputBoxHandle = MachoMenuInputbox(VehicleSec3, "Spawn Name", "BF400...")
MachoMenuButton(VehicleSec3, "Spawn Car", function()
    local LocatedText = MachoMenuGetInputbox(InputBoxHandle)
    RequestModel(GetHashKey(LocatedText))
    while not HasModelLoaded(GetHashKey(LocatedText)) do
        Citizen.Wait(0)
    end
    local playerPed = GetPlayerPed(-1)
    local pos = GetEntityCoords(playerPed)
    local vehicle = CreateVehicle(GetHashKey(LocatedText), pos.x, pos.y, pos.z, GetEntityHeading(playerPed), true, false)
    TaskWarpPedIntoVehicle(playerPed, vehicle, -1)
end)

InputBoxHandlex = MachoMenuInputbox(VehicleSec3, "Plate", "Human...")
MachoMenuButton(VehicleSec3, "Change Plate", function()
    local LocatedTextx = MachoMenuGetInputbox(InputBoxHandlex)
    local vehicle = GetVehiclePedIsIn(GetPlayerPed(-1), false)
    if vehicle ~= 0 then
        SetVehicleNumberPlateText(vehicle, LocatedTextx)
    end
end)

MachoMenuButton(VehicleSec3, "Repair Vehicle", function()
    local vehicle = GetVehiclePedIsIn(GetPlayerPed(-1), false)
    if vehicle ~= 0 then
        SetVehicleFixed(vehicle)
        SetVehicleDirtLevel(vehicle, 0.0)
    end
end)

MachoMenuButton(VehicleSec3, "Full Upgrade", function()
    local vehicle = GetVehiclePedIsIn(GetPlayerPed(-1), false)
    if vehicle ~= 0 then
        SetVehicleModKit(vehicle, 0)
        for i = 0, 49 do
            if GetNumVehicleMods(vehicle, i) > 0 then
                SetVehicleMod(vehicle, i, GetNumVehicleMods(vehicle, i) - 1, false)
            end
        end
        ToggleVehicleMod(vehicle, 18, true) 
        ToggleVehicleMod(vehicle, 22, true) 
        SetVehicleWheelType(vehicle, 7)
        SetVehicleWindowTint(vehicle, 1)
    end
end)
function DeleteEntity(entity)
    if DoesEntityExist(entity) then 
        SetEntityAsMissionEntity(entity, true, true) 
        Citizen.InvokeNative(0xAE3CBE5BF394C9C9, Citizen.PointerValueIntInitialized(entity)) 
        print("Entity deleted.")
    else
        print("Entity does not exist.")
    end
end
MachoMenuButton(VehicleSec3, "Delete Vehicle", function()
    local vehicle = GetVehiclePedIsIn(GetPlayerPed(-1), false)
    if vehicle ~= 0 then
        SetEntityAsMissionEntity(vehicle, true, true)
        DeleteEntity(vehicle)
    end
end)

  
  MachoMenuButton(VehicleSec3, "Vehicle Keys [QB]", function()

  end)
  

-- Misc

local MiscSec = MachoMenuGroup(MiscTab, "General", HumanXStart, HumanYStart, HumanXEnd, HumanYEnd)
local MiscSec2 = MachoMenuGroup(MiscTab, "Value", HumanXStart2, HumanYStart, HumanXEnd2, HumanYEnd22)
local MiscSec3 = MachoMenuGroup(MiscTab, "Misc", HumanXStart2, HumanYStart3, HumanXEnd2, HumanYEnd3)
-- // General
local __AATIMER__ = 0
local PlayerPedId = GetPlayerPed(-1)
local Keys = {["Z"] = 44, ["Q"] = 30, ["S"] = 33, ["D"] = 34}
local isAntiAimEnabled = false

function ToggleAntiAim(enabled)
    if enabled then
        if not isAntiAimEnabled then
            isAntiAimEnabled = true
            Citizen.CreateThread(function()
                while isAntiAimEnabled do
                    Citizen.Wait(0)
                    if IsControlPressed(0, Keys["Z"]) or IsControlPressed(0, Keys["Q"]) or IsControlPressed(0, Keys["S"]) or IsControlPressed(0, Keys["D"]) then
                        if __AATIMER__ < 10 then
                            RequestAnimDict('move_strafe@roll_fps')
                            TaskPlayAnim(PlayerPedId, 'move_strafe@roll_fps', 'combatroll_fwd_p1_-45', 0, 16.0, -1, 46, 1.0, false, false, false)
                            __AATIMER__ = __AATIMER__ + 1
                        end

                        if __AATIMER__ >= 10 then
                            ClearPedTasks(PlayerPedId, true)
                            Citizen.Wait(300)
                            __AATIMER__ = 0
                        end
                    end
                end
            end)
        end
    else
        isAntiAimEnabled = false
        ClearPedTasks(PlayerPedId, true)
        __AATIMER__ = 0
    end
end

MachoMenuCheckbox(MiscSec, "Anti Aim [PVP]", function()
    ToggleAntiAim(true)
end,
function()
    ToggleAntiAim(false)
end)
local shotsFiredd = 0
local shotsFired = 0
local CrouchsEnabled = false
local rollsEnabled = false

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        if IsControlJustPressed(0, 24) then  
            if CrouchsEnabled then
                shotsFiredd = shotsFiredd + 1

                if shotsFiredd >= 6 then
                    local ped = GetPlayerPed(-1)
                    TaskPlayAnim(ped, 'move_crouch_proto', 'rstart_l_-90', 0, 16.0, -1, 46, 1.0, false, false, false)
                    Citizen.Wait(600)
                    TaskPlayAnim(ped, 'move_crouch_proto', 'run_turn_180_r', 0, 16.0, -1, 46, 1.0, false, false, false)
                    Citizen.Wait(600)
                    TaskPlayAnim(ped, 'move_crouch_proto', 'rstart_l_-90', 0, 16.0, -1, 46, 1.0, false, false, false)
                    Citizen.Wait(600)
                    TaskPlayAnim(ped, 'move_crouch_proto', 'run_turn_180_r', 0, 16.0, -1, 46, 1.0, false, false, false)
                    Citizen.Wait(600)
                    ClearPedTasks(ped)

                    shotsFiredd = 0  
                end
            end

            if rollsEnabled then
                shotsFired = shotsFired + 1

                if shotsFired >= 6 then
                    local ped = GetPlayerPed(-1)
                    TaskPlayAnim(ped, 'move_strafe@roll_fps', 'combatroll_bwd_p1_-135', 0, 16.0, -1, 46, 1.0, false, false, false)
                    Citizen.Wait(600)
                    TaskPlayAnim(ped, 'move_strafe@roll_fps', 'combatroll_bwd_p1_135', 0, 16.0, -1, 46, 1.0, false, false, false)
                    Citizen.Wait(600)
                    TaskPlayAnim(ped, 'move_strafe@roll_fps', 'combatroll_fwd_p1_90', 0, 16.0, -1, 46, 1.0, false, false, false)
                    Citizen.Wait(600)
                    TaskPlayAnim(ped, 'move_strafe@roll_fps', 'combatroll_fwd_p1_-45', 0, 16.0, -1, 46, 1.0, false, false, false)
                    Citizen.Wait(600)
                    ClearPedTasks(ped)

                    shotsFired = 0  
                end
            end
        end
    end
end)

MachoMenuCheckbox(MiscSec, "Fake Crouch [PVP]", function()
    CrouchsEnabled = true
end,
function()
    CrouchsEnabled = false
end)

-- Checkbox for Fake Rolls [PVP]
MachoMenuCheckbox(MiscSec, "Fake Rolls [PVP]", function()
    rollsEnabled = true
end,
function()
    rollsEnabled = false
end)

local laggingEnabled = false

function ToggleLagging(enabled)
    if enabled then
        Citizen.CreateThread(function()
            while laggingEnabled do
                Citizen.Wait(0)
                local ped = GetPlayerPed(-1)
                if IsPedWalking(ped) or IsPedRunning(ped) or IsPedJumping(ped) then
                    if (laggingDelay or 0) < GetGameTimer() then
                        laggingDelay = GetGameTimer() + 888
                        local x, y, z = table.unpack(GetEntityCoords(ped))
                        SetEntityCoordsNoOffset(ped, x, y - 0.5, z, true, true, true)
                    end
                end
            end
        end)
    else
        laggingEnabled = false
    end
end

MachoMenuCheckbox(MiscSec, "Lagging [PVP]", function()
    laggingEnabled = true
    ToggleLagging(true)
end,
function()
    laggingEnabled = false
    ToggleLagging(false)
end)

local antiTeleportEnabled = false

function EnumeratePeds()
    local peds = {}
    local handle, ped = FindFirstPed()
    local success

    repeat
        table.insert(peds, ped)
        success, ped = FindNextPed(handle)
    until not success

    EndFindPed(handle)
    return peds
end

function AntiTeleport()
    Citizen.CreateThread(function()
        while antiTeleportEnabled do
            Citizen.Wait(0)
            
            for _, ped in pairs(EnumeratePeds()) do
                local pedCoords = GetEntityCoords(ped)
                local selfCoords = GetEntityCoords(GetPlayerPed(-1))
                local dist = #(selfCoords - pedCoords)  
                if dist <= 0.5 and ped ~= GetPlayerPed(-1) then
                    local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1)))
                    local randomOffset = math.random(0, 400)
                    local foundGround, zPos = GetGroundZFor_3dCoord(x + randomOffset + 0.0, y + randomOffset + 0.0, z + 0.0)
                    
                    if foundGround then
                        SetEntityCoordsNoOffset(GetPlayerPed(-1), x + randomOffset + 0.0, y + randomOffset + 0.0, zPos, false, false, false, true)
                    end
                end
            end
        end
    end)
end

MachoMenuCheckbox(MiscSec, "Anti Teleport", function()
    antiTeleportEnabled = true
   -- print("Anti Teleport Enabled")
    AntiTeleport()  
end,
function()
    antiTeleportEnabled = false
  --  print("Anti Teleport Disabled")
end)

local isCoordsEnabled = false 
local coordsTextHandle = nil  



MachoMenuCheckbox(MiscSec, "Draw Coords", function()
    isCoordsEnabled = true  
end,
function()
    isCoordsEnabled = false 
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        if isCoordsEnabled then
            local playerPed = GetPlayerPed(-1)
            local playerCoords = GetEntityCoords(playerPed)
            
            local coordsText = "X: " .. math.ceil(playerCoords.x) .. " Y: " .. math.ceil(playerCoords.y) .. " Z: " .. math.ceil(playerCoords.z)
            DrawTxt(coordsText,0.05, false, {255, 255, 255}, 0.5, 0.5, true, 0.1)
        end
    end
end)

-- Value

InputBoxHandle = MachoMenuInputbox(MiscSec2, "Coords", "x,y,z...")

MachoMenuButton(MiscSec2, "TP Coords", function()
    local CoodsText = MachoMenuGetInputbox(InputBoxHandle)
    
     print("Coordinates: " .. CoodsText)

    local x, y, z = string.match(CoodsText, "([%-?%d%.]+),([%-?%d%.]+),([%-?%d%.]+)")

    if x and y and z then
        x = tonumber(x)
        y = tonumber(y)
        z = tonumber(z)

        local playerPed = GetPlayerPed(-1)
        SetEntityCoordsNoOffset(playerPed, x, y, z, false, false, false, true)

        print("Teleporting to: ", x, y, z)
    else
        print("Invalid coordinates entered. Please use the format x,y,z")
    end
end)



-- // Misc 
MachoMenuButton(MiscSec3, "Teleport Waypoint", function()
    local waypointHandle = GetFirstBlipInfoId(8)
    if DoesBlipExist(waypointHandle) then
        local waypointCoords = GetBlipInfoIdCoord(waypointHandle)
        local playerPed = GetPlayerPed(-1)
        SetEntityCoordsNoOffset(playerPed, waypointCoords.x, waypointCoords.y, waypointCoords.z, false, false, false, true)
    else
        print("No waypoint set.")
    end
end)

-- Visual Effect


local VisualSec = MachoMenuGroup(VisualTab, "General", HumanXStart, HumanYStart, HumanXEnd, HumanYEnd)
 local VisualSec2 = MachoMenuGroup(VisualTab, "Value", HumanXStart2, HumanYStart, HumanXEnd2, HumanYEnd22)
-- local VisualSec3 = MachoMenuGroup(VisualTab, "Misc", HumanXStart2, HumanYStart3, HumanXEnd2, HumanYEnd3)

function RandomRGB()
    local r = math.floor(math.random(0, 250) / 50) * 50
    local g = math.floor(math.random(0, 250) / 50) * 50
    local b = math.floor(math.random(0, 250) / 50) * 50
    return r, g, b
end

function ToggleRainbowMenu(enabled)
    if enabled then
        Citizen.CreateThread(function()
            while true do
                Citizen.Wait(100)
                local r, g, b = RandomRGB()
                MachoMenuSetAccent(MenuWindow, r, g, b)
            end
        end)
    else
        MachoMenuSetAccent(MenuWindow, 63.0, 0.0, 0.0)

        print("Rainbow Menu Disabled")
    end
end

MachoMenuCheckbox(VisualSec, "Rainbow Menu", function()
    ToggleRainbowMenu(true)
end,
function()
    ToggleRainbowMenu(false)
end)


-- // Value
local rValue = 0
local gValue = 0
local bValue = 0

MenuSliderHandle = MachoMenuSlider(VisualSec2, "R", 0, 0, 250, "%", 0, function(Value)
    rValue = Value
    print("R updated with value " .. rValue)
end)

MenuSliderHandle = MachoMenuSlider(VisualSec2, "G", 0, 0, 250, "%", 0, function(Value)
    gValue = Value
    print("G updated with value " .. gValue)
end)

MenuSliderHandle = MachoMenuSlider(VisualSec2, "B", 0, 0, 250, "%", 0, function(Value)
    bValue = Value
    print("B updated with value " .. bValue)
end)

MachoMenuButton(VisualSec2, "Change Color", function()
    print("Color changed to: R=" .. rValue .. " G=" .. gValue .. " B=" .. bValue)
    MachoMenuSetAccent(MenuWindow, rValue / 250, gValue / 250, bValue / 250)
end)

-- Animations


local AnimSec = MachoMenuGroup(AnimTab, "General", HumanXStart, HumanYStart, HumanXEnd, HumanYEnd)
-- local AnimSec2 = MachoMenuGroup(AnimTab, "Value", HumanXStart2, HumanYStart, HumanXEnd2, HumanYEnd22)
-- local AnimSec3 = MachoMenuGroup(AnimTab, "Misc", HumanXStart2, HumanYStart3, HumanXEnd2, HumanYEnd3)
MachoMenuButton(AnimSec, "Force Cancel Animations", function()
    ClearPedTasksImmediately(GetPlayerPed(-1)) 
    print("Animations have been canceled.")
end)

MachoMenuButton(AnimSec, "Sex Reciver", function()
    local ped = GetPlayerPed(-1)
    TaskPlayAnim(ped, "random@sex", "idle_a", 8.0, -8, -1, 50, 0, false, false, false)
    print("Sex Receiver animation started.")
end)

MachoMenuButton(AnimSec, "Sex Giver", function()
    local ped = GetPlayerPed(-1)
    TaskPlayAnim(ped, "random@sex", "idle_b", 8.0, -8, -1, 50, 0, false, false, false)
    print("Sex Giver animation started.")
end)

MachoMenuButton(AnimSec, "Gay Dance", function()
    local ped = GetPlayerPed(-1)
    TaskPlayAnim(ped, "anim@mp_player_intcelebrationmale@air_guitar", "air_guitar", 8.0, -8, -1, 50, 0, false, false, false)
    print("Gay Dance animation started.")
end)

MachoMenuButton(AnimSec, "Turning around", function()
    local ped = GetPlayerPed(-1)
    TaskPlayAnim(ped, "move_m@turn", "turn_a", 8.0, -8, -1, 50, 0, false, false, false)
    print("Turning around animation started.")
end)

MachoMenuButton(AnimSec, "Celebrate", function()
    local ped = GetPlayerPed(-1)
    TaskPlayAnim(ped, "anim@mp_player_intcelebrationmale@thumbs_up", "thumbs_up", 8.0, -8, -1, 50, 0, false, false, false)
    print("Celebrate animation started.")
end)

MachoMenuButton(AnimSec, "Electrocution", function()
    local ped = GetPlayerPed(-1)
    TaskPlayAnim(ped, "amb@world_human_stand_fire@base", "base", 8.0, -8, -1, 50, 0, false, false, false)
    print("Electrocution animation started.")
end)

MachoMenuButton(AnimSec, "Shower", function()
    local ped = GetPlayerPed(-1)
    TaskPlayAnim(ped, "amb@world_human_bum_wash@male@base", "base", 8.0, -8, -1, 50, 0, false, false, false)
    print("Shower animation started.")
end)

MachoMenuButton(AnimSec, "Dog Pissing", function()
    local ped = GetPlayerPed(-1)
    TaskPlayAnim(ped, "amb@world_human_piss@male@base", "base", 8.0, -8, -1, 50, 0, false, false, false)
    print("Dog Pissing animation started.")
end)

MachoMenuSmallText(MenuWindow, "Framework")

local QbTab = MachoMenuAddTab(MenuWindow, "QB")

-- QB Framework 

local QbSec = MachoMenuGroup(QbTab, "General", HumanXStart, HumanYStart, HumanXEnd, HumanYEnd)
--local QbSec2 = MachoMenuGroup(QbTab, "Value", HumanXStart2, HumanYStart, HumanXEnd2, HumanYEnd22)
--local QbSec3 = MachoMenuGroup(QbTab, "Misc", HumanXStart2, HumanYStart3, HumanXEnd2, HumanYEnd3)

-- // General
MachoMenuButton(QbSec, "Revive ", function()

end)
MachoMenuButton(QbSec, "Fill Hungry ", function()

end)
MachoMenuButton(QbSec, "Fill Water ", function()

end)
MachoMenuButton(QbSec, "Remove Stress ", function()

end)
MachoMenuButton(QbSec, "Set Armor ", function()

end)
