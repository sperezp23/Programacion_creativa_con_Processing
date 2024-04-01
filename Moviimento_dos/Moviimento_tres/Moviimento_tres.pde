float x = 55.0, y = 55.0, velocidadX = 8.0, velocidadY = 2.0, radio = 20.0, directionX = 1, directionY = -1;

void setup() {
  size(800,400);
  noStroke();
  ellipseMode(RADIUS);
  background(0);
}

void draw() {
  
  // Estela
  fill(0, 15);
  rect(0, 0, width, height);

  if (directionX == -1)
  {
    fill(255, 0, 0);
  }
  else
  {
    fill(0,0,255);
  }
  
  // Elipce
  ellipse(x,y,radio, radio);
  
  
  //Movimiento en x
  x += velocidadX * directionX;
  
  if((x > width - radio) || (x < radio))
  {
    directionX = -directionX;
  }
  
  //Movimiento en y
  y += velocidadY * directionY;
  
    if((y > height - radio) || (y < radio))
  {
    directionY = -directionY;
  }
}
