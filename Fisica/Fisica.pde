int x = 0, y = 0, state = 0;
float speed = 5.0;

void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  noStroke();
  fill(255);
  rect(x, y, 20, 20);

  if (state == 0) {
    x += speed;
    
    if (x > width -25){
      state = 1;
    }
  }
  
  else if (state == 1){
    y += speed;
    if (y > height -25){
      state = 2;
    }
  }
  
  else if (state == 2){
    x -= speed;
    if (x < 5) {
      state = 3;
    }
  }
  
  else if (state == 3){
    y -= speed;
    if (y < 0) {
      y = 0;
      state = 0;
    }
  }
}
