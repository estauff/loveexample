function love.load()
  x = 100
  y = 100
  accel = 10
  velocity = 0
end

function love.update(dt)
  if love.keyboard.isDown('right') then
    velocity = velocity + accel*dt
  end
  x = x + velocity*dt
end

function love.draw(dt)
  love.graphics.setColor(0, 0, 255)
  love.graphics.circle('fill', x, y, 25)
end
