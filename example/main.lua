grass = love.graphics.newImage("Grass tile.png")

function love.load()
  x = 100
  y = 100
end

function love.update(dt)
  if love.keyboard.isDown('right') then
    x = x + 10*dt
  end
end

function love.draw(dt)
  love.graphics.draw(grass, 100, 200)
  love.graphics.setColor(0, 0, 255)
  love.graphics.circle('fill', x, y, 25)
end
