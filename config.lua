
Config = Config or {}


--NPC HẰNG NGÀY
Config.Daily_NPC = {
    ped = "u_m_y_pogo_01",
    coords = vector4(182.99, -917.62, 30.69, 146.22),
}

-- NPC HÀNG GIỜ
Config.Hourly_NPC = {
    ped = "s_m_y_uscg_01",
    coords = vector4(185.31, -919.11, 30.69, 148.31),
}

-- NHIỆM VỤ HẰNG NGÀY
Config.Daily_Mission = {

    {
        name = "Nông dân chăm chỉ",
        label = "Thu thập 10 bánh mì, 10 nước",
        required = {
            ["sandwich"] = 10,
            ["water_bottle"] = 10,
        },
        reward_item = {
            ["lockpick"] = 10, 
        },
        reward_money = {
            ["cash"] = 5000,
            ["bank"] = 5000,
        }
    },




}

-- NHIỆM VỤ HÀNG GIỜ

Config.Hourly_Mission = {
    {
        name = "Nông dân chăm chỉ",
        label = "Thu thập 10 bánh mì, 10 nước",
        required = {
            ["sandwich"] = 10,
            ["water_bottle"] = 10,
        },
        reward_item = {
            ["lockpick"] = 10, 
        },
        reward_money = {
            ["cash"] = 5000,
            ["bank"] = 5000,
        }
    },
}


-- NHIỆM VỤ ĐIỂM ẨN
Config.Hidden_Mission = {
    {

        ped = "ig_car3guy1", 
        coords = vector3(-10.75, -1035.52, 28.98),
        min_time = 10, -- THỜI GIAN NÓI CHUYỆN ĐƯỢC
        max_time = 20, 

        id = "nhiemvuan_1", -- ID này bạn cứ đặt bừa đừng trùng với các nhiệm vụ khác là được
        name = "Nông dân chăm chỉ",
        label = "Thu thập 10 bánh mì, 10 nước",
        required = {
            ["sandwich"] = 10,
            ["water_bottle"] = 10,
        },
        reward_item = {
            ["lockpick"] = 10, 
        },
        reward_money = {
            ["cash"] = 5000,
            ["bank"] = 5000,
        }
    }, 
}



