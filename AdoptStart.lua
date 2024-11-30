print('Start!')

function button_click (button_obj)
    local events = {"MouseButton1Click", "MouseButton1Down", "Activated"}
    
    for i,v in pairs(events) do
        for _,connection in pairs(getconnections(button_obj[v])) do
            pcall(function ()
                connection:Fire()
                task.wait(0.1)
                connection:Fire()
            end)
        end
    end
end

local PlayButton = game:GetService("Players").LocalPlayer.PlayerGui.NewsApp.EnclosingFrame.MainFrame.Contents.PlayButton
button_click(PlayButton)
