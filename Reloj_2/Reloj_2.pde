/*
ESTE PROGRAMA GENERA 3 BARRAS RECTANGULARES HORIZONTALES
QUE INCREMENTAN SU TAMAÑO Y VARÍAN SU COLOR, CON EL PASO DEL
TIEMPO. LA PRIMERA BARRA ES PARA LOS SEGUNDOS, LA SEGUNTA PARA LOS
MINUTOS Y LA TERCERA PARA LAS HORAS.
*/

// Declaración de variables de tipo punto flotante
float
horas = 0.0,
minutos = 0.0,
segundos = 0.0;


void setup(){

  size(800,800); // Tamaño de la ventana.
  
}

void draw(){

  background(0); // Color de fondo de la ventana.
  
  /* 
  Las siguientes TRES (3) lineas de codigo, 
  convierten los respectivos intervalos de tiempo
  en longitud de la ventana.
  */
  segundos = map(second(), 0, 60, 0, width); 
  minutos = map(minute(), 0, 60, 0, width);
  horas = map(hour(), 0, 24, 0, width);
  
  // Segundos
  noStroke(); // Figuras sin contorno
  fill(segundos/3 ,0,segundos/3); // Rellenar las figuras con el color especificado en (r,g,b). 
  rect(0, 0, segundos, height/3); // Generar un rectangulo en la posición especificada y con las limenciones dadas.
  stroke(255); // Figuras con contorno de color blanco.
  line(segundos, 0, segundos, height/3); // Generar una linea en la posición especificada y con las limenciones dadas.
  
  // Minutos
  noStroke(); // Figuras sin contorno
  fill(minutos/3 ,0,0); // Rellenar las figuras con el color especificado en (r,g,b).
  rect(0, height/3, minutos, height/3); // Generar un rectangulo en la posición especificada y con las limenciones dadas.
  stroke(255); // Figuras con contorno de color blanco.
  line(minutos, height/3, minutos, height * 2/3); // Generar una linea en la posición especificada y con las limenciones dadas.
  
  // Horas
  noStroke(); // Figuras sin contorno
  fill(0, horas/3, horas/3); // Rellenar las figuras con el color especificado en (r,g,b).
  rect(0, height * 2/3, horas, height/3); // Generar un rectangulo en la posición especificada y con las limenciones dadas.
  stroke(255); // Figuras con contorno de color blanco.
  line(horas, height * 2/3, horas, height); // Generar una linea en la posición especificada y con las limenciones dadas.
  
}
