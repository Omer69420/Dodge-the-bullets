---@diagnostic disable: lowercase-global
 
 
require("player")  --länkning till Player mappen.
require("bullet")  --länkning till Bullet mappen.
 
local isGameOver = false   -- sätter locala värdet i booleanen i början av spelet
 
-- för att veta vad Player gör måste jag länka lua filerna på detta vis och samma med Bullet mappen.
     
function love.load() -- laddar in filerna   
    Player:load()
    bullet:load()  
end
 
function love.update(dt) -- updaterar de(de rör på sig)
    Player:update(dt)
    bullet:update(dt)
    if(checkCollision(Player, bullet)) then
        isGameOver = true   -- boolean updateras
    end
 
 --Kontrollerar om bollen hamnar utanför mappen!
    if(bullet.y > love.graphics.getHeight()) and isGameOver == false then
        bullet.y = -100
        bullet.x = math.random(50, love.graphics.getWidth() - 50)
        bullet.speed = bullet.speed + 40
        score = score + 1
    end

end


function love.draw() -- ritar ut filernas info
    
    if(isGameOver) then    -- Om man förlorar så printar den ut texten "GAME OVER"
        local font = love.graphics.newFont(40)
        love.graphics.setFont(font)
        local text = "GAME OVER!"
        love.graphics.print(text, love.graphics.getWidth() / 2 - font:getWidth(text) / 2, love.graphics.getHeight() * (1 / 3))
        love.graphics.print("Your score:" .. " " .. score, love.graphics.getWidth() / 6, love.graphics.getHeight() / 2, 0, 2)
        return
        
        else scoreDraw()  -- updaterar ens score per bullet dodgad
    end
 
    Player:draw()
    bullet:draw()
end
 
function checkCollision(a, b)  -- checkar omplayern och bulletsen kolliderar.
    if a.x + a.width > b.x and a.x < b.x + b.width and a.y + a.height > b.y and a.y < b.y + b.height then
        return true
    else
        return false
    end
end
 
function love.keypressed(key)  -- ifall man vill stänga av spelet
    if key == "escape" then
        love.event.quit()
    elseif key == "r" then     -- restartar spelet om man trycker på "R"
        love.event.quit("restart")
    end
end


scoreDraw = function ()    -- score system
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.print("Score: ", 10, 10, 0, 2)
    love.graphics.print(score, 100, 10, 0, 2)
end