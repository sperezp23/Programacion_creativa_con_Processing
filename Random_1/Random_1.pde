float r, g, b, d; // Declaración de variables.

void setup(){
  size(800,800); // Tamaño de la ventana.
  noStroke(); // Figuras sin contorno.
  background(0); // Fondo de la ventana de color negro.
}

void draw(){
  fill(0,12); // Rellenar las figuras de color negro con una opacidad dada.
  rect(0, 0, width, height); // Rectangulo del tamaño de la pantalla para dar el efecto de desvanecimiento.
  
  r = random(100, 155);
  g = random(100,155);
  b = random(200, 255); // Asignar a las variables r, g , b, datos aleatorios en los intervalos dados.
  
  fill(r, g ,b, 150); // Rellenar las figuras con el color especificado con una opacidad dada.
  d = random(150); // Asignar un dato aleatorio en el intervalo establecido a la variable d.
  ellipse(random(width), random(height), d, d); // Imprir una elipce en una posición aleatoria con los diametros especificados.
}
