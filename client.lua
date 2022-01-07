exports('AddButton', function(title, description, type, trigger, param, menuid, uid)
    if id == nil then 
        id = false 
    end
    SetNuiFocus(true , true)
    SendNUIMessage({addbutton = true, title = title, description = description, type = type, trigger = trigger, param = param, menuid = menuid, uid = uid })
end)

exports('SubMenu', function(title, description, menuid)
    SetNuiFocus(true , true)
    SendNUIMessage({addmenu = true, title = title, description = description, menuid = menuid })
end)

exports('SetTitle', function(title)
    SendNUIMessage({SetTitle = true, title = title})
end)

RegisterNUICallback("clicked", function(data, cb)
    local trigger = data.trigger
    local type = data.type
    
    if type == 'server' then
        TriggerServerEvent(trigger, data.param)
    elseif type == 'client' then
        TriggerEvent(trigger, data.param)
    end
    PlaySoundFrontend(-1, "Continue_Accepted", 'DLC_HEIST_PLANNING_BOARD_SOUNDS', 1)
end)

RegisterNUICallback("close", function(data, cb)
    SetNuiFocus(false, false)
    PlaySoundFrontend(-1, 'Highlight_Cancel', 'DLC_HEIST_PLANNING_BOARD_SOUNDS', 1)
end)