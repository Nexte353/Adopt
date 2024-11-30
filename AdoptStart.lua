local APIs = game.ReplicatedStorage.API:GetChildren()

for num, i in APIs do
    i:FireServer()
end
