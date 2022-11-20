function text(content) 
    SetTextFont(7)
    SetTextProportional(0)
    SetTextScale(1.4,1.4)
    SetTextEntry("STRING")
    AddTextComponentString(content)
    DrawText(0.5,0.8)
end
Citizen.CreateThread(function()

    while true do
        Citizen.Wait(1)
        local speed = (GetEntitySpeed(GetVehiclePedIsIn(GetPlayerPed(-1), false))*2.2369)
        if(IsPedInAnyVehicle(GetPlayerPed(-1), false)) then
            text(math.floor(speed))
        end
    end
end)