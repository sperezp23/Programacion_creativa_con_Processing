float x,y;

void setup(){
  size(800,800);
  surface.setResizable(true);
  noStroke();
  //background(0);
}

void draw(){
  fill(0,12);
  rect(0,0,width,height);
  
  fill(225);
  x = lerp(x, mouseX, 0.05);
  y = lerp(y, mouseY, 0.05);
  ellipse(x,y,50,50);
}
