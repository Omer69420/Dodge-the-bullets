bullet = {}     -- definierar Bullet

function bullet:load() -- Bullets värden
    x  = love.math.random(710)
    y = 0
    self.width = 20
    self.height = 10
end

function bullet:update(dt)  -- Bullets hastighet
    y = y + 250 * dt 
end


function bullet:draw()
    love.graphics.setColor(1,0,0)  -- färgen av bullets
    love.graphics.circle("fill", x , y, self.height)  -- Tillfällig cirkel för Bullets utseende
end