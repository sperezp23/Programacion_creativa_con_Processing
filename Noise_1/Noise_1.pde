float v = 0.0, inc = 0.02, n = 0.0; // Declaración de variables.

size(800,800); // Tamaño de la ventana.

noStroke(); // Figuras sin contorno.
background(0); // Color del fondo de la ventana negro.
fill(225); // Rellenar las figuras de color blanco.

noiseSeed(20); // Fijar la semilla de la fución noise.

for(int i = 0; i < width; i += 4){ // Ciclo for para imprimir las lineas verticales.
  n = noise(v)*550.0; // Almacenar el la variable n el valor de noise multiplicado por 550.0
  rect(i, n, 3, 10); // Lineas cortas de arriba.
  rect(i, 50 + n, 3, 100); // Lineas largas del medio.
  rect(i, 270 + n, 3, 10); // Linear cortas de abajo.
  v = v + inc; // Ingrementar el valor de v.
}

/* n varía la altula de las lineas, son 3 lineas muy cercanas,
por eso parecen ser rectangulos. Por lo tanto, cada "rectangulo"
son tres lineas paralelas muy proximas entre sí.*/
