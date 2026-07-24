/*
ESTE PROGRAMA SIMULA UNA ONDA VIAJERA,
UNA ONDA DE LA FORMA kx ± wt.
*/

// Declaración de variables
float
f_Hz = 0.4, // Frecuencia. 
lambda_m = 200, // Longitud de onda.
k = TAU / lambda_m, // Numero de onda.
w = TAU * f_Hz, // Frecuencia angular
t = 0, // Tiempo
x_amarilla = 0, // Posición de los puntos de equilibrio. 
y = 0, // Desplazamiento respecto al punto de equilibrio. 
sig_y = 1; // Función signo para cambiar el sentido de las flechas.

void setup(){
  
  size(1400,440); // Tamaño de ventana
  
}

void draw(){
  
  translate(0, height/2); // Trasladar el origen de coordenadas al centro de la ventana.
  background(0); // Color de fondo de pantalla, negro;
  stroke(#FFE603); // Color de lineas y puntos.
  
  // Imprime en pantalla cada vector a lo largo del eje x.
  for (int x_amarilla = 10; x_amarilla < width; x_amarilla +=12){
    
    y = 100 * sin( (k * x_amarilla) - (w * t)); // Función de la onda viajera.
    sig_y = y / abs(y); // Cambia el sentido de las flechas
    
    // Imprime en pantalla un triangulo en la posición indicada para cada vertice.
    triangle( 
    x_amarilla - 2, y - ( 4 * sin(PI/3) * sig_y ),
    x_amarilla, y,
    x_amarilla + 2, y - ( 4 * sin(PI/3) * sig_y )
    );
    
    strokeWeight(3); //Grosor de linea.
    line(x_amarilla, 0, x_amarilla, y); // Genera en pantalla las lineas amarillas.
    
  }
  
  t += 0.01; // Incrementar el paso del tiempo.
  
  stroke(255); // Color de linea central.
  line(0, 0, width, 0); // Linea central. 
}
