local Cooldown = false
local Duration = 0

lib.callback.register("flight-utility:server:UtilityCooldown", function(source)
    return Duration == 0 or (os.time() - Duration) > 0
end)

lib.callback.register("flight-utility:server:CheckOnCooldown", function(source)
    return Cooldown
end)

RegisterNetEvent("flight-utility:server:ActivateUtilityCooldown", function(bool)
    if bool then Duration = os.time() + (Config.Duration * 60) else Duration = 0 end
end)

RegisterNetEvent("flight-utility:server:OnCooldown", function(bool)
	Cooldown = bool
end)