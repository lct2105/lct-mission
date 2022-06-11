-- ██╗░░░░░░█████╗░████████╗  ░██████╗░█████╗░██████╗░██╗██████╗░████████╗
-- ██║░░░░░██╔══██╗╚══██╔══╝  ██╔════╝██╔══██╗██╔══██╗██║██╔══██╗╚══██╔══╝
-- ██║░░░░░██║░░╚═╝░░░██║░░░  ╚█████╗░██║░░╚═╝██████╔╝██║██████╔╝░░░██║░░░
-- ██║░░░░░██║░░██╗░░░██║░░░  ░╚═══██╗██║░░██╗██╔══██╗██║██╔═══╝░░░░██║░░░
-- ███████╗╚█████╔╝░░░██║░░░  ██████╔╝╚█████╔╝██║░░██║██║██║░░░░░░░░██║░░░
-- ╚══════╝░╚════╝░░░░╚═╝░░░  ╚═════╝░░╚════╝░╚═╝░░╚═╝╚═╝╚═╝░░░░░░░░╚═╝░░░

    -- TẠO NPC -- 
Citizen.CreateThread(function()
    -- NPC HÀNG NGÀY 
    RequestModel(Config.Daily_NPC.ped)
    while not HasModelLoaded(Config.Daily_NPC.ped) do
        Citizen.Wait(1)
    end

    Daily_NPC =  CreatePed(4, Config.Daily_NPC.ped, Config.Daily_NPC.coords.x, Config.Daily_NPC.coords.y, Config.Daily_NPC.coords.z-1, 3374176, false, true)
    SetEntityHeading(Daily_NPC, Config.Daily_NPC.coords.w)
    FreezeEntityPosition(Daily_NPC, true)
    SetEntityInvincible(Daily_NPC, true)
    SetBlockingOfNonTemporaryEvents(Daily_NPC, true)

    exports['qb-target']:AddBoxZone("daily_npc", vector3(Config.Daily_NPC.coords.x, Config.Daily_NPC.coords.y, Config.Daily_NPC.coords.z-1), 1, 1, {
        name= "daily_npc",
        heading= Config.Daily_NPC.coords.w,
        debugPoly=false,
        minZ = Config.Daily_NPC.coords.z-1,
        maxZ = Config.Daily_NPC.coords.z+1,
        },{
        options = {
            {
                type = "client",
                event = "lct-mission:client:DailyMissionMenu",
                icon = "fas fa-comments",
                label = "Nói Chuyện",
            },
        },
        distance = 1.5,
    })

    -- NPC HÀNG GIỜ 

    RequestModel(Config.Hourly_NPC.ped)
    while not HasModelLoaded(Config.Hourly_NPC.ped) do
        Citizen.Wait(1)
    end

    Hourly_NPC =  CreatePed(4, Config.Hourly_NPC.ped, Config.Hourly_NPC.coords.x, Config.Hourly_NPC.coords.y, Config.Hourly_NPC.coords.z-1, 3374176, false, true)
    SetEntityHeading(Hourly_NPC, Config.Hourly_NPC.coords.w)
    FreezeEntityPosition(Hourly_NPC, true)
    SetEntityInvincible(Hourly_NPC, true)
    SetBlockingOfNonTemporaryEvents(Hourly_NPC, true)


    exports['qb-target']:AddBoxZone("hourly_npc", vector3(Config.Hourly_NPC.coords.x, Config.Hourly_NPC.coords.y, Config.Hourly_NPC.coords.z-1), 1, 1, {
        name= "hourly_npc",
        heading= Config.Hourly_NPC.coords.w,
        debugPoly=false,
        minZ = Config.Hourly_NPC.coords.z-1,
        maxZ = Config.Hourly_NPC.coords.z+1,
        },{
        options = {
            {
                type = "client",
                event = "lct-mission:client:HourlyMissionMenu",
                icon = "fas fa-comments",
                label = "Nói Chuyện",
            },
        },
        distance = 1.5,
    })


    -- NPC ĐIỂM ẨN

    for k, v in pairs(Config.Hidden_Mission) do 
        RequestModel(v.ped)
        while not HasModelLoaded(v.ped) do
            Citizen.Wait(1)
        end

        Hidden_NPC =  CreatePed(4, v.ped, v.coords.x, v.coords.y, v.coords.z-1, 3374176, false, true)
        SetEntityHeading(Hidden_NPC, v.coords.w)
        FreezeEntityPosition(Hidden_NPC, true)
        SetEntityInvincible(Hidden_NPC, true)
        SetBlockingOfNonTemporaryEvents(Hidden_NPC, true)

        exports['qb-target']:AddBoxZone("hidden_npc"..k, vector3(v.coords.x, v.coords.y, v.coords.z-1), 1, 1, {
            name= "hidden_npc"..k,
            heading= v.coords.w,
            debugPoly=false,
            minZ = v.coords.z-1,
            maxZ = v.coords.z+1,
            },{
            options = {
                {
                    type = "client",
                    event = "lct-mission:client:HiddenMissionMenu",
                    icon = "fas fa-comments",
                    label = "Nói Chuyện",
                    key = k,
                },
            },
            distance = 1.5,
        })

    end 
end)
