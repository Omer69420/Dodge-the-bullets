
Player = {}

function Player:load()
    self.x = love.graphics.getWidth() / 2   --bredden av windows rutan delat på 2 för att få mitten.
    self.y = love.graphics.getHeight() / 2  -- längden av windows rutan delat på 2 för att få mitten.
    self.width = 25
    self.height = 25
    self.speed = 300
end

function Player:update(dt)
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
    then self.y = self.y - self.speed * dt -- riktning uppercase
    end

    if self.y < 0 
    then self.y = 0
    elseif self.y + self.height > love.graphics.getHeight() 
    then self.y = love.graphics.getHeight() - self.height
    end

    if self.x < 0
    then self.x = 0
    elseif self.x + self.width > love.graphics.getWidth()
    then self.x = love.graphics.getWidth() - self.width
    end

end

function Player:move(dt)

end


function Player:boundaries()

end



function Player:draw()
    love.graphics.circle("fill", self.x, self.y, self.height)
end