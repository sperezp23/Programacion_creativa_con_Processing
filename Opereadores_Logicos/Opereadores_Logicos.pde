void setup(){
  size(800,800);//Tamaño de la ventana.
}

void draw(){
  background(0);//Fondo negro.
  stroke(180);//Color blanco para las lineas.
  line(width/2,0,width/2,height);//Vertical.
  line(0,height/2,width,height/2);//Horizontal.
  
  noStroke();//Sin lineas de contorno.
  fill(240);//Rellenar las figuras de blanco.
  
  if(mousePressed){//Si un boton del moue esta presionado...
    fill(210,0,0);//Rellenar de color rojo.
  }
  
  if(mouseX < width/2 && mouseY < height/2){//Si el cursor del mouse esta en el primer cuandrante...
    rect(0,0,width/2,height/2);//Rectangulo del tamaño del cuadrante.
  }
  else if(mouseX > width/2 && mouseY < height/2){//Si el cursor del mouse esta en el segundo cuandrante...
    rect(width/2,0,width/2,height/2);//Rectangulo del tamaño del cuadrante.
  }
  else if(mouseX < width/2 && mouseY > height/2){//Si el cursor del mouse esta en el tercer cuandrante...
    rect(0,width/2,width/2,height/2);//Rectangulo del tamaño del cuadrante.
  }
  else if(mouseX > width/2 && mouseY > height/2){//Si el cursor del mouse esta en el cuarto cuandrante...
    rect(width/2,height/2,width/2,height/2);//Rectangulo del tamaño del cuadrante.
  }
}
