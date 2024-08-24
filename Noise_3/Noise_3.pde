float // Declaración de variables
xnoise = 7.0,
ynoise = 4.0,
inc = 0.009, 
r = 0.0, 
g = 0.0, 
b = 0.0;

size(800, 800); // Tamaño de la ventana.

for(int y = 0; y < height; y++){ // Ciclo for para recorrer el eje y
  for(int x = 0; x < height; x++){ // Ciclo for para recorrer el eje x
    
    r = noise(xnoise, ynoise)*225; // Usar nosise para establecer la cantidad de color rojo.
    g = noise(xnoise, ynoise)*55; // Usar nosise para establecer la cantidad de color verde.
    b = noise(xnoise, ynoise)*100; // Usar nosise para establecer la cantidad de color azul.
    
    stroke(r,g,b); // Contorno del color establecido.
    point(x,y); // Imprimir puntos en a posición establecida.
    xnoise += inc; // Siguiente dato en la secuencia x que generó noise.
  }
  xnoise = 0.0; // Reiniciar noise x para imprimir la siguiente linea de pixeles.
  ynoise  += inc; // Siguiente dato en la secuencia y que generó noise.
}

/*
EL incremento es quien hace que la textura no presente un patron periodico
ya que a pesar de que y permanece ynoise permanece constante para cada fila de pixeles, 
xnoise varía con ada recorrido, y al finalizar, se incrementa nuevamente ynoise en una cantidad
tan grande (ya que inc es igual tanto para xnoise como para ynoise) que no hay forma de que se presente
un patron periodico en la textura genrada.
*/
  
