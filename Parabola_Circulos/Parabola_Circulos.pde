size(500,500);

background(50);
stroke(255);
noFill();

float n,y,r,phi;

r = 100;
phi = 2*cos(radians(36));

for(int x = 0; x < width; x+= 12){
  n = norm(x,0.0,width);
  y = pow(n,2);  
  y *= width;
  strokeWeight(n*4);
  ellipse(x,y,r,phi*r);
}
