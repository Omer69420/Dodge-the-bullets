
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
    then self.x = self.x + self.speed * dt
        end
    if love.keyboard.isDown("s")
    then self.y = self.y + self.speed * dt
        end
    if love.keyboard.isDown("a")
    then self.x = self.x - self.speed * dt
        end
    if love.keyboard.isDown("w")
    then self.y = self.y - self.speed * dt
        end
end

function Player:move(dt)

end


function Player:boundaries()

end



function Player:draw()
    love.graphics.circle("fill", self.x, self.y, self.height)
end