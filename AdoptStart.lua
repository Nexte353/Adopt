local APIs = game.ReplicatedStorage.API:GetChildren()

for num, i in APIs do
    local succes, Error = pcall(function (...)
        i:FireServer()
        print('nextel')
    end)
end
