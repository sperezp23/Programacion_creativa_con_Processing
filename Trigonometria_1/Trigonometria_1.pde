/*
ESTE PROGRAMA IMPRIME UN PATRON EN PANTALLA
MEDIANTE EL USO DE LA FUCIÓN SENO. PARA ELLO,
SE RECORRE TODA LA PANTALLA VARIANDO EL OFFSET, Y
EL DESFASE DEL ARGUMENTO DE LA FUNCIÓN.
*/


// Declaración de variables
float
scaleVal = 20.0,
angleInc = PI/40.0,
angle = PI,
x = 0.0;


size(640,640); // Tamaño de ventana. 
background(30); // Color del fondo de la pantalla.
fill(255); // Color de relleno de las figuras.
noStroke(); // Fijuras sin contorno.


// Ciclo for para recorrer el eje x
for(int offset = -10; offset < width + 10; offset += 25){
  // Ciclo for para recorrer el eje y
  for(int y = 0; y < height; y += 3){
  
    x  = offset + sin(angle) * scaleVal; // Calculo de las posición de la x.
    
    ellipse(x, y, 5, 5); // Generar una elipce en la posición dada, con el tamaño pedido.
    
    angle += angleInc; // incrementar el valor del angulo para la siguiente posición.
  
  }
  
  angle += PI; // Incrementar el desfase.
}
