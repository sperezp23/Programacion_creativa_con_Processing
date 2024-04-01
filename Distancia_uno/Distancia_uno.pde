float d = 0;//Declaración de variables.

void setup(){
  size(800,800);//Tamaño de la ventana.
}

void draw(){
  background(0);//Color de fondo negro.
  d = dist(width/2,height/2,mouseX,mouseY);//Distancia entre dos puntos. 
  ellipse(width*0.5,height*0.5,d*2,d*2);//Elipse de radio variable.
}
