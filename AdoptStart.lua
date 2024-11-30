local APIs = game.ReplicatedStorage.API:GetChildren()
print('nextel 123')
for num, i in APIs do
    local succes, Error = pcall(function (...)
        i:FireServer()
        print('nextel')
    end)
end
