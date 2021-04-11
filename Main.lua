---@diagnostic disable: lowercase-global
 
 
require("player")  --länkning till Player mappen.
require("bullet")  --länkning till Bullet mappen.
 
local isGameOver = false
 
-- för att veta vad Player gör måste jag länka lua filerna på detta vis och samma med Bullet mappen.
     
function love.load() -- laddar in filerna   
    Player:load()
    bullet:load()  
end
 
function love.update(dt) -- updaterar de(de rör på sig)
    Player:update(dt)
    bullet:update(dt)
    if(checkCollision(Player, bullet)) then
        isGameOver = true
    end
end
 
function love.draw() -- ritar ut filernas info
    
    if(isGameOver) then
        local font = love.graphics.newFont(40)
        love.graphics.setFont(font)
        local text = "GAME OVER!"
        love.graphics.print(text, love.graphics.getWidth() / 2 - font:getWidth(text) / 2, love.graphics.getHeight() * (1 / 3))
        return
    end
 
    Player:draw()
    bullet:draw()
 
end
 
function checkCollision(a, b)
    if a.x + a.width > b.x and a.x < b.x + b.width and a.y + a.height > b.y and a.y < b.y + b.height then
        return true
    else
        return false
    end
end
 
function love.keypressed(key)  -- ifall man vill stänga av spelet
    if key == "escape" then
        love.event.quit()
    elseif key == "r" then
        love.event.quit("restart")
    end
end
