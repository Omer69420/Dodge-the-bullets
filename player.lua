
Player = {}

function Player:load()
    self.x = love.graphics.getWidth() / 2   --bredden av windows rutan delat på 2 för att få mitten.
    self.y = love.graphics.getHeight() / 2  -- längden av windows rutan delat på 2 för att få mitten.
    self.width = 25
    self.height = 25
    self.speed = 300
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
    if self.y < 0 + self.height / 2
    then self.y = 0 + self.height / 2
    elseif self.y + self.height > love.graphics.getHeight() -- boundaries upp och ner, så playern inte kan rymma kartan
    then self.y = love.graphics.getHeight() - self.height
    end

    if self.x < 0 + self.width / 2
    then self.x = 0 + self.width / 2
    elseif self.x + self.width > love.graphics.getWidth() -- boundaries höger och vänster, så playern inte kan rymma kartan
    then self.x = love.graphics.getWidth() - self.width
    end

end



function Player:draw()
    love.graphics.circle("fill", self.x, self.y, self.height)
end