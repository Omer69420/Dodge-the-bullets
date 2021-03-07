-- x = 2

--x = 50
--y = 50



-- love.update = function ()
--    x = x + 10;
-- end

--love.draw = function ()
  --  love.graphics.circle("fill", x, y, 10)
--end
require("player")  --länkning till andra Player mappen.

-- för att veta vad Player gör måste jag länka lua filerna på detta vis.

function love.load()
    Player:load()
end

function love.update(dt)
    Player:update(dt)
end

function love.draw()
    Player:draw()
end