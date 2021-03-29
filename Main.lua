
require("player")  --länkning till andra Player mappen.
require("bullet")
-- för att veta vad Player gör måste jag länka lua filerna på detta vis.

function love.load()
    Player:load()
    bullet:load()
end

function love.update(dt)
    Player:update(dt)
    bullet:update(dt)
end

function love.draw()
    Player:draw()
    bullet:draw()
end