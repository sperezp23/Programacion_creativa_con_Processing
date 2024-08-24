float time = 0.0, increment = 0.01, r = 0.0; // Declaración de variables.

void setup(){
  size(800,800); // Tamalo de la ventana.
}

void draw(){
  background(225); // Fondo de la ventana de color blanco.
  r = noise(time)*width; // Radio de la circunferencia.
  time += increment; // Uncremento del arcumento de la función noise.
  fill(0); // Rellenar las figuras de color negro.
  ellipse(width/2, height/2, r, r); // Imprimir la elipse.
}
