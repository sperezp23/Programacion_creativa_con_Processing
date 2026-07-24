/*
ESTE PROGRAMA IMPRIME UN PATRON EN PANTALLA
MEDIANTE EL USO DE LA FUCIÓN SENO. PARA ELLO,
SE RECORRE TODA LA PANTALLA VARIANDO EL OFFSET, Y
EL DESFASE DEL ARGUMENTO DE LA FUNCIÓN.
*/


// Declaración de variables
float
scaleVal = 120.0,
offset = 126.0,
angleInc = 0.42,
angle = 0.0,
y = 0.0;


size(640,640); // Tamaño de ventana. 
background(180, 50, 90); // Color del fondo de la pantalla (ROJO).
strokeWeight(10); // Grosor de lineas.


// Ciclo for para recorrer el eje x
for(int x = -width; x < width; x += 25){
  
    y  = offset + (sin(angle) * scaleVal); // Calculo de las posición de la y.
    
    stroke(y); // Color de las lineas (Blanco).
    line(x, 0, x + width/2, height); // construir lineas (Blancas).
     
    angle += angleInc; // Incrementar el valor del angulo para la siguiente posición.
  
}
 
