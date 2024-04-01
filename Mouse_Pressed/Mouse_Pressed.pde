void setup(){
  size(800,800);//Tamaño de la ventana.
  strokeWeight(30);//Grosor de lineas de contorno.
}

void draw(){
  background(204);//Color de fondo
  fill(255);//Rellenar de blanco(solo rellena las difuras, las lineas no).
  stroke(102);//Color gris.
  line(width,0,0,height);//Primera diagonal.
  
  if(mousePressed){//Si el mouse tiene algun boton precionado...
    if(mouseButton == RIGHT){//Si el boton precionado de el derecho.
      stroke(255,0,0);//Color rojo.
    }
    else{//Sino se cumplen las condiciones anteriores.
      stroke(0);//Color negro.
    }
  }
  
  line(0,0,width,height);//Segunda diagonal.
  ellipse(width*0.5,height*0.5,300,300);//Ellipse 
}
