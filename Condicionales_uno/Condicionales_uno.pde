void setup(){
  size(900,900); //Tamaño de la ventana
  noStroke(); //Desactivar contorno
  rectMode(CENTER); //Centrar el rectangulo en la coordenada dada
}

void draw(){
  background(0); //Fondo negro 
  if(mouseX > 600){ // Si es menor que 600...
    fill(#FF0000); //Rellene de rojo.
    ellipse(width/2,height/2,500,500); //Elipce.
  }
  else if (mouseX > 300 & mouseX < 600){ // Si es mayor que 300 y menor que 600...
    fill(0,255,0); //Rellene de verde.
    rect(width/2,height/2,500,500);//Rectangulo.
  }
  else{ // Si no se cumple ninguna de las condiciones anteriores...
    fill(0,0,255); //Rellene de azul.
    triangle(width/2-100, 100, 100,height/2,500,height/2);//Triangulo.
  }
  
}
