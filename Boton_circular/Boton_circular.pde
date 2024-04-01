int radio = 200;//Declaración de variables numericas entereas.
float d;//Declaración de variavles numericas reales.

void setup(){
  size(600,600);//Tamaño de ventana
  ellipseMode(RADIUS);//Ellipse en modo radio.
}

void draw(){
  background(100);//Color de fondo.
  d = dist(mouseX,mouseY,width/2,height/2);//Discancia entre el centro del circulo y el cursor del mouse.
  
  if(d <= radio){//Si la discancia es menor al radio...
    fill(0);//Rellenar de negro.
  }
  else{//Sino...
    fill(225);//Rellenar de blanco.
  }
  
  ellipse(width/2,height/2,radio,radio);//Crear elipse.
}
