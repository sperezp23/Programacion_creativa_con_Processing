float d = 0;//Declaración de variables.

void setup(){
  size(800,800);//Tamaño de la ventana.
  stroke(0,102);//Color de linea.
}

void draw(){
  d = dist(width/2,height/2,mouseX,mouseY);//Distancia entre dos puntos. 
  strokeWeight(0.1*d);//Grosor de lineas.
  line(mouseX,mouseY,pmouseX,pmouseY);//Linea entre el punto pasado y el punto actual.
}
