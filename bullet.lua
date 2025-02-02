bullet = {}     -- definierar Bullet
score = 0

function bullet:load() -- Bullets värden
    self.x  = love.math.random(720)
    self.y = 0
    self.width = 20
    self.height = 10
    self.speed = 250
end
 
function bullet:update(dt)  -- Bullets hastighet
    self.y = self.y + (self.speed * dt)
end

 
function bullet:collide()  -- kolliderings funktionen
    if checkCollision(self, Player) then
        self.speed = 0
    end
end
 
function bullet:draw()
    love.graphics.setColor(1,0,0)  -- färgen av bullets
    love.graphics.circle("fill", self.x , self.y, self.height)  -- Tillfällig cirkel för Bullets utseende
end