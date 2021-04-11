
Player = {}

function Player:load()
    self.x = love.graphics.getWidth() / 2   --bredden av windows rutan delat på 2 för att få mitten.
    self.y = love.graphics.getHeight() / 2  -- längden av windows rutan delat på 2 för att få mitten.
    self.width = 25  -- player bredd
    self.height = 25 -- player höjd
    self.speed = 300 -- player hastighet
end
-- "Städat", så att koden inte blandar ihop sig och så att det ser snyggare ut placerade 
-- jag koden i enskilda funktioner och sedan lade jag fubnktionerna i update funktionen.
function Player:update(dt)
    Player:move(dt)
    Player:boundaries() 
end

function Player:move(dt)
    if love.keyboard.isDown("d") 
    then self.x = self.x + self.speed * dt --riktning höger
    end
    
    if love.keyboard.isDown("s")
    then self.y = self.y + self.speed * dt -- riktning ner
    end
    
    if love.keyboard.isDown("a")
    then self.x = self.x - self.speed * dt -- riktning vänster
    end
    
    if love.keyboard.isDown("w")
    then self.y = self.y - self.speed * dt -- riktning upp
    end

end


function Player:boundaries()
    if self.y < 0 + self.height then 
        self.y = 0 + self.height elseif
        self.y + self.height > love.graphics.getHeight() -- boundaries upp och ner, så playern inte kan rymma kartan
    then self.y = love.graphics.getHeight() - self.height
    end

    if self.x < 0 + self.width        -- fixade boundaries, hade delat self.height och self.width på 2 och det var problemet.
    then self.x = 0 + self.width 
    elseif self.x + self.width > love.graphics.getWidth() -- boundaries höger och vänster, så playern inte kan rymma kartan
    then self.x = love.graphics.getWidth() - self.width
    end

end



function Player:draw()
    love.graphics.setColor(0,0,1)  -- färgen av playern
    love.graphics.circle("fill", self.x, self.y, self.height)
end