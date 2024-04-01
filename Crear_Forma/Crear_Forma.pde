size(600,600);
float r = 60;
PShape s;

s = createShape();
s.beginShape();
for(float i = 0;i<=TAU; i+=0.0001){
s.vertex(r*pow(cos(i),3)+(width*0.5),r*pow(sin(i),3)+(width*0.5));
}
endShape(CLOSE);

shape(s,0,0);
