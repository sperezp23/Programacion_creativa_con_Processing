
float 
largo_r = 250.0,
t = 0;
  
void setup(){

  size(1000, 640);
  translate(0, height/2);
  scale(1, -1);
  
  stroke(#FFD900);
  fill(#FFD900);
  strokeWeight(4);
}

void draw(){
  
    background(0);
    
    resorte_h(0, height / 4, largo_r*(1+0.5*cos(t)), 30);
    circle(largo_r*(1+0.5*cos(t)) + 50, height / 4, 100);
    
    resorte_h(0, 3 * height / 4, largo_r*(1+0.5*cos(t + PI)), 30);
    circle(largo_r*(1+0.5*cos(t + PI)) + 50, 3 * height / 4, 100);
    
    
    resorte_v(width - 100, 0, largo_r*(1+0.7*cos(t)),30);
    circle(width - 100, largo_r*(1+0.7*cos(t)) + 50, 100);
    
    resorte_v(width - 300, 0, largo_r*(1+0.7*cos(t + HALF_PI)), 30);
    circle(width - 300, largo_r*(1+0.7*cos(t + HALF_PI)) + 50, 100);
    t += 0.05;

}
