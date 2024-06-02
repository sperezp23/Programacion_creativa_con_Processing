float x = 400, y = 70, speed = 0.0, gravity = 0.1, diametro = 120, tiempo = 0;

void setup(){
  size(800,800);
}

void draw(){
  background(255);
  fill(0);
  noStroke();
  ellipse(x, y, diametro, diametro);
  
  
  y += speed;
  speed +=  gravity;
  
  if (y >= height - (diametro / 2) - 1){
    speed = speed * -0.95;
  }
}
