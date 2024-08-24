float speed = 30.0, x = 0.0, y = 0.0; // Declaración de variables del tipo flotante.
int diameter = 80; // Declaración de variables de tipo entero. 

void setup(){
  size(800,800); // Tamaño de la ventana.
  background(60); // Color de fondo.
  x = width/2; // Inicialización de la variable x.
  y = height/2; // Inicialización de la variable y.
  randomSeed(30); // Fijar una semilla para los datos aleatorios.
}

void draw(){
  x += random(-speed, speed); // Asignar una dato aleatorio a la variable x.
  y += random(-speed, speed); // Asignar una dato aleatorio a la variable y.
  x = constrain(x, diameter, width - diameter); // Restringir los valores que puede tomar la variable x.
  y = constrain(y, diameter, height - diameter); // Restringir los valores que puede tomar la variable y.
  ellipse(x, y, diameter, diameter); // Imprimir las elipces.
}
