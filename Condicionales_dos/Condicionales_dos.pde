void setup(){
  size(800,800); //Tamaño de la ventana. 
}

void draw(){
  background(0); //Fondo negro.
  
  stroke(225,150); //Lienas blancas, con trasnparencia del 150.
  line(width/2,0,width/2,height); //Linea media.
  
 line(mouseX,0,mouseX,height); //Linea del cursor. 
 noStroke(); // En adelante, no dar contorno a las figuras.
 
 if(mouseX < 200){ //Si el cursor en X es mmenor que 200...
   fill(255,0,0,150); //Color rojo con transparencia del 150.
   ellipse(width/2,height/2,500,500); //Elipse
 }
 else if(mouseX > 600){ //Si el cursor en X es mayor que 600...
   rectMode(CENTER); //Rectangulo en modo centro.
   fill(0,0,255,150); //Color azul con transarencia del 150.
   rect(width/2,height/2,500,500);//Rectangulo.
 }
}
