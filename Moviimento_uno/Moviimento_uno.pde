float y = 50.0, velocidad = 3.0, radio = 55.0; //Declaración de variables

void setup(){
  size(800,800); //Tamaño de ventana
  noStroke(); //Figuras sin contorno
  ellipseMode(RADIUS); //Cambiar las elipces al modo radio.  
}

void draw(){
  background(255-0.30*y,0,255*y);//Modifica el color del fondo de la ventana mientras transcurre la animación.
  fill(255*y,255-0.30*y,0);//Modifica el color del relleno de las figuras mientras transcurre la animación.
  ellipse(y,y,radio,radio);//Genera una elipce con el radio dado y la posición indicada.
  //y += velocidad;//Incrementa de forma lineal la velocidad del movimiento.
  y += (exp(velocidad)+exp(-velocidad))/2;//Incrementa la velocidad del movimiento de la forma cosh(velocidad).
  
  if(y > height+radio){// Si el valor de y(la posición) es mayor que la altura de la ventana mas el radio de la figura...
    y  = 0;//Reinicie la posición de la figura.
  }
  
  //y = constrain(y,0,height-radio); //Mantenga la posición de la figura en el rango [0,height-radio]
  println("Posición: ",str(y));//Imprima el valor de la posición
}
