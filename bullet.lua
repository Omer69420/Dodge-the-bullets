bullet = {}

function bullet:load()
    x = 10
    y = 150
    self.width = 40
    self.height = 20
end

function bullet:update(dt)
    x = x + 100 * dt 
end



function bullet:draw()
    love.graphics.circle("fill", x, y, self.height)
end

