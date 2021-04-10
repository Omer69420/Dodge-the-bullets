
require("player")  --länkning till Player mappen.
require("bullet")  --länkning till Bullet mappen.
require("physics") --länkning till Physichs mappen
-- för att veta vad Player gör måste jag länka lua filerna på detta vis och samma med Bullet mappen.

function love.load() -- laddar in filerna
    Player:load()
    bullet:load()
end

function love.update(dt) -- updaterar de(de rör på sig)
    Player:update(dt)
    bullet:update(dt)
end

function love.draw() -- ritar ut filernas info
    Player:draw()
    bullet:draw()
end