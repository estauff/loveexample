grass = love.graphics.newImage("Grass tile.png")
slimer = love.graphics.newImage("Slime.png")
forest = love.graphics.newImage("nighttimeforest1.jpg")
forestWidth, forestHeight = forest:getDimensions()

scalex = love.graphics:getWidth()
scaley = love.graphics:getHeight()

function love.load()
  x = 100
  y = 100
  vx = 0
  vy = 0
end

minHeight = scaley - slimer:getHeight()

function love.update(dt)
  if love.keyboard.isDown('right') then
    vx = 400
  end
  if love.keyboard.isDown('left') then
    vx = -400
  end
  if love.keyboard.isDown('up') and y == minHeight then
    vy = -2000
  end

  if y < minHeight then
    vy = vy + 100
  else
    if vy > 0 then
      vy = 0
      y = minHeight
    end
  end
  if x < 0 then
    vx = 0
    x = 0
  end
  if x > scalex - slimer:getWidth() then
    vx = 0
    x = scalex - slimer:getWidth()
  end

  x = x + vx*dt
  y = y + vy*dt

  vx = vx * .9
  vy = vy * .9
end

function love.draw(dt)
  -- love.graphics.setColor(0, 0, 255)
  -- love.graphics.circle('fill', x, y, 25)
  love.graphics.setColor(255,255,255)
  love.graphics.draw(forest, 1, 1, 0, scalex / forestWidth, scaley / forestHeight)
  love.graphics.setColor(0,.2,0)
  love.graphics.draw(slimer, x, y)
  -- love.graphics.draw(grass, 100, 200)

end
