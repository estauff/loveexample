grass = love.graphics.newImage("Grass tile.png")
slimer = love.graphics.newImage("Slime.png")

function love.load()
  x = 100
  y = 100
end

function love.update(dt)
  if love.keyboard.isDown('right') then
    x = x + 100*dt
  end
  if love.keyboard.isDown('left') then
    x = x - 100*dt
  end
  if love.keyboard.isDown('up') then
  y = y - 100*dt
  end
  if love.keyboard.isDown('down') then
    y = y + 100*dt
  end
end

function love.draw(dt)
  -- love.graphics.setColor(0, 0, 255)
  -- love.graphics.circle('fill', x, y, 25)
  love.graphics.setColor(255,255,255)
  love.graphics.draw(slimer, x, y)
  love.graphics.draw(grass, 100, 200)

end
