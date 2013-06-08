def setup
  size 480, 120
end

def draw
  if mouse_pressed?
  	fill(0)
  else
  	fill(255)
  end
  ellipse(mouseX, mouseY, 80, 80)
end