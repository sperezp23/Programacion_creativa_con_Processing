float offset = 100;//Declaracion de variavle numerica flotante.

void setup(){
 size(800,600);//Tamaño de ventana.
}

void draw(){
  strokeWeight(75);//Grosor de linea.
  stroke(210);//Color de linea.
  background(95,0,195);//Color de fondo.
  
  line(offset, offset, mouseX, height - offset);//Genera una linea.
  line(width-offset, offset, offset, mouseY);//Genera una linea.
}

void mousePressed(){//Cuando se precione una tecla del mouse...
  save("imagen.jpg");//Guardar imagen.
}

void keyPressed(){//Cuando se precione una tecla...
  save("imagen.jpg");//Guardar imagen.
}
