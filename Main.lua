-- x = 2

x = 50
y = 50



love.load = function ()
    
end

-- love.update = function ()
--    x = x + 10;
-- end

love.draw = function ()
    love.graphics.circle("fill", x, y, 10)
end


