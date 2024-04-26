-- QBCore Exports / Variables --
local QBCore = exports['qb-core']:GetCoreObject()
local RecentRobbery = 0, 0, 0

RegisterNetEvent('sp-MeterRobbery:client:UnscrewBackplate', function()
    if RecentRobbery == 0 or GetGameTimer() > RecentRobbery then
        QBCore.Functions.TriggerCallback('sp-MeterRobbery:server:PoliceInteger', function(ReturnStatus)
            if ReturnStatus then
                QBCore.Functions.TriggerCallback('sp-MeterRobbery:server:ScrewDriverSet', function(ItemScan)
                    if ItemScan then
                        QBCore.Functions.Progressbar('Backplate', 'Ouverture du boitier..', Config.ProgressBarInteger, false, true, { -- Name | Label | Time | useWhileDead | canCancel
                            disableMovement = true,
                            disableCarMovement = true,
                            disableMouse = false,
                            disableCombat = true,
                        }, {
                        animDict = 'amb@prop_human_parking_meter@male@idle_a',
                            anim = 'idle_a',
                            flags = 17,
                        }, {}, {}, function() -- Play When Done
                            ClearPedTasks(PlayerPedId())
                            Dispatch()
                            -- RecentRobbery = GetGameTimer() + Config.HeistCooldown
                            -- exports['ps-ui']:Circle(function(success)
                            --     if success then
                            --         QBCore.Functions.Progressbar('Backplate', 'Grabbing Cash', Config.ProgressBarInteger, false, true, { -- Name | Label | Time | useWhileDead | canCancel
                            --             disableMovement = true,
                            --             disableCarMovement = true,
                            --             disableMouse = false,
                            --             disableCombat = true,
                            --         }, {
                            --         animDict = 'oddjobs@shop_robbery@rob_till',
                            --             anim = 'loop',
                            --             flags = 17,
                            --         }, {}, {}, function() -- Play When Done
                            --             ClearPedTasks(PlayerPedId())
                            --             TriggerServerEvent('sp-MeterRobbery:server:AddMoney')
                            --         end, function() -- Play When Cancel
                            --             ClearPedTasks(PlayerPedId())
                            --         end)
                            --     else
                            --         QBCore.Functions.Notify('Wrong Screwdriver', 'error')
                            --     end
                            -- end, 2, 20)

                            exports['boii_minigames']:skill_circle({
                                style = 'default', -- Style template
                                icon = 'fa-solid fa-sack-dollar', -- Any font-awesome icon; will use template icon if none is provided
                                area_size = 5, -- Size of the target area in Math.PI / "value"
                                speed = 0.07, -- Speed the target area moves
                            }, function(success) -- Game callback
                                if success == 'perfect' then
                                    -- If perfect do something
                                    --print('skill_circle perfect')

                                    QBCore.Functions.Progressbar('Backplate', 'Récupération de la monnaie..', Config.ProgressBarInteger, false, true, { -- Name | Label | Time | useWhileDead | canCancel
                                        disableMovement = true,
                                        disableCarMovement = true,
                                        disableMouse = false,
                                        disableCombat = true,
                                    }, {
                                    animDict = 'oddjobs@shop_robbery@rob_till',
                                        anim = 'loop',
                                        flags = 17,
                                    }, {}, {}, function() -- Play When Done
                                        ClearPedTasks(PlayerPedId())
                                        TriggerServerEvent('sp-MeterRobbery:server:AddMoney')
                                        RecentRobbery = GetGameTimer() + Config.HeistCooldown
                                    end, function() -- Play When Cancel
                                        ClearPedTasks(PlayerPedId())
                                    end)

                                elseif success == 'success' then
                                    -- If success do something
                                    --print('skill_circle success')

                                    exports['boii_minigames']:skill_circle({
                                        style = 'default', -- Style template
                                        icon = 'fa-solid fa-sack-dollar', -- Any font-awesome icon; will use template icon if none is provided
                                        area_size = 5, -- Size of the target area in Math.PI / "value"
                                        speed = 0.07, -- Speed the target area moves
                                    }, function(success) -- Game callback
                                        if success == 'perfect' then
                                            -- If perfect do something
                                            --print('skill_circle perfect')
        
                                            QBCore.Functions.Progressbar('Backplate', 'Récupération de la monnaie..', Config.ProgressBarInteger, false, true, { -- Name | Label | Time | useWhileDead | canCancel
                                                disableMovement = true,
                                                disableCarMovement = true,
                                                disableMouse = false,
                                                disableCombat = true,
                                            }, {
                                            animDict = 'oddjobs@shop_robbery@rob_till',
                                                anim = 'loop',
                                                flags = 17,
                                            }, {}, {}, function() -- Play When Done
                                                ClearPedTasks(PlayerPedId())
                                                TriggerServerEvent('sp-MeterRobbery:server:AddMoney')
                                                RecentRobbery = GetGameTimer() + Config.HeistCooldown
                                            end, function() -- Play When Cancel
                                                ClearPedTasks(PlayerPedId())
                                            end)
        
                                        elseif success == 'success' then
                                            -- If success do something
                                            --print('skill_circle success')
        
                                            QBCore.Functions.Progressbar('Backplate', 'Récupération de la monnaie..', Config.ProgressBarInteger, false, true, { -- Name | Label | Time | useWhileDead | canCancel
                                                disableMovement = true,
                                                disableCarMovement = true,
                                                disableMouse = false,
                                                disableCombat = true,
                                            }, {
                                            animDict = 'oddjobs@shop_robbery@rob_till',
                                                anim = 'loop',
                                                flags = 17,
                                            }, {}, {}, function() -- Play When Done
                                                ClearPedTasks(PlayerPedId())
                                                TriggerServerEvent('sp-MeterRobbery:server:AddMoney')
                                                RecentRobbery = GetGameTimer() + Config.HeistCooldown
                                            end, function() -- Play When Cancel
                                                ClearPedTasks(PlayerPedId())
                                            end)
        
                                        elseif success == 'failed' then
                                            -- If failed do something
                                            --print('skill_circle fail')
                                            
                                            QBCore.Functions.Notify('C\'est un échec..', 'error')
        
                                        end
                                    end)

                                elseif success == 'failed' then
                                    -- If failed do something
                                    --print('skill_circle fail')
                                    
                                    QBCore.Functions.Notify('C\'est un échec..', 'error')

                                end
                            end)

                        end, function() -- Play When Cancel
                            ClearPedTasks(PlayerPedId())
                        end)
                    end
                end, Config.RequiredItem)
            end
        end)
    else
        QBCore.Functions.Notify('Celui-ci est vide... essaie plus tard !', 'error')
    end
end)

-- Meter Robbery alert to Dispatch --
function Dispatch()
    --exports['ps-dispatch']:MeterRobbery()

    local playerData = exports['qs-dispatch']:GetPlayerInfo()

    TriggerServerEvent("qs-dispatch:server:CreateDispatchCall",
        {
            job = "police",
            callLocation = playerData.coords,
            callCode = { code = "10-49", snippet = "ParkMeter Robbery" },
            message = 'Un individu de sexe ' .. playerData.sex .. ' essaie de dérober un parkmetre dans la zone de ' .. playerData.street_1 .. '.',
            flashes = false,
            image = nil,
            blip = {
                sprite = 487,
                scale = 1.5,
                colour = 1,
                flashes = false,
                text = "Sign Robbery Call",
                time = 1000,--(3 * 60 * 1000),
            },
            otherData = {
                {
                    text = 'ParkMeter Robbery',
                    icon = 'fas fa-sign',
                }
            }
        }
    )

end
