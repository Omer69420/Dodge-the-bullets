
Player = {}

function Player:load()
    self.x = love.graphics.getWidth() / 2   
    self.y = love.graphics.getHeight() / 2
    self.width = 50
    self.height = 50
    self.speed = 400
end

function Player:update(dt)


end

function player:move(dt)


end


function Player:boundaries()




end



function player:draw()
    love.graphics.circle("fill", 50, 50, 10)
    
end