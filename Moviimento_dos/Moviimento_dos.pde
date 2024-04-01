float x = 55.0, y = 55.0, velocidadX = 5.0, velocidadY = 2.0, radio = 55.0; //Declaración de variavles numericas reales.
int direccionX = 1, direccionY = -1; //Declaración de las variables numericas enteras.

void setup() {
  size(1000, 500);//Tamaño de ventana.
  noStroke();//Figuras sin contorno.
  ellipseMode(RADIUS);//Modo de manejo de las elipces radio.
}

void draw() {
  background(0);//Color de fondo negro
  ellipse(x, y, radio, radio); //Elipce en la posición (x,y) con el randio indicado.

  x += velocidadX * direccionX; //Genera del despazamiento en 'x' segun la dirección en el movimiento indicada.

  if ((x > width - radio) || (x < radio)) //Si toca las paredes.  
  {
    direccionX = -direccionX; //Cambie de dirección.
  }

  y += velocidadY * direccionY; //Genera del despazamiento en 'x' segun la dirección en el movimiento indicada.

  if ((y > height - radio) || (y < radio)) //Si toca el suelo o el techo.
  {
    direccionY = -direccionY; //Cambie de dirección.
  }
}
