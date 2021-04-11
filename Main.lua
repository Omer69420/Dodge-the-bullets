---@diagnostic disable: lowercase-global


require("player")  --länkning till Player mappen.
require("bullet")  --länkning till Bullet mappen.

-- för att veta vad Player gör måste jag länka lua filerna på detta vis och samma med Bullet mappen.

--function checkCollision(Player, bullet)
  --  if love.physics.getDistance(Player ,bullet) < 5 then 
    --    return true
    --end
--end

-- if bullet.x + bullet.width > player.x
-- and bullet.x < player.x + player.width
-- and bullet.y + bullet.height > player.y
-- and bullet.y < player.y + player.height

--local collided = checkCollision(Player.fixture, bullet.fixture)

--if collided then
  --  print("Game over")
--end
    


function love.load() -- laddar in filerna   
    Player:load()
    bullet:load()  
end

function love.update(dt) -- updaterar de(de rör på sig)
    Player:update(dt)
    bullet:update(dt)
    checkCollision(Player, bullet)
end

function love.draw() -- ritar ut filernas info
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
    end
end