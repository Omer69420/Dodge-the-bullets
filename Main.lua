x = 2

love.load = function ()
    
end

love.update = function ()
    x = x + 10;
end

love.draw = function ()
    love.graphics.circle("fill", x, 300, 100)
end
