/*
GENERA UNA ESPIRAL, MEDIANTE LA CONECCIÓN DE
LINEAS RECTAS.
*/

// Declaración de variables.
float
radius = 0.15, // Radio.
cx = width/2, // Coordenada x del centro.
cy = height/2, // Coordenada y del centro.
px = cx, // x anterior (pasado).
py = cy, // y anterior (pasado).
angle = 0.0, // Angulo del giro.
x = 0.0, // Coordenada x.
y = 0.0; // Coordenada y.


size(800,800); // Tamaño de ventana.
background(0); // Color de fondo (Negro).
stroke(200); // Color de lineas (Blanco).
strokeWeight(3); // Grosor de lineas de 3 px. 

// para deg, desde cero hasta 10 vueltas, con un paso de 16.18... 
for(float deg = 0; deg < 360 * 10; deg += 16.18){

  angle = radians(deg); // Convertir el angulo en radianes.
  
  // Funciones parametricas del espeiral
  x = cx + cos(angle) * radius;
  y = cy + sin(angle) * radius;
  
  line(px, py, x, y); // Linear para "Interpolar" la espiral.
  radius = radius * 1.0387; // Incrementar el valor del radio.
  
  px = x; // Guardar la posición anterior de la x
  py = y; // Guardar la posición anterior de la y
}
