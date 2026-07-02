/*
ESTE PROGRAMA CREA EN PANTALLA UN RELOJ ANALOGICO.
*/

// Declaración de variables de tipo punto flotante
float
horas = 0.0,
minutos = 0.0,
segundos = 0.0,
x0 = 0.0,
y0 = 0.0;

void setup(){
  
  size(800,800); // Tamaño de la ventana
  x0 = width / 2; // Coordenadas x del centro de la ventana.
  y0 = height / 2; // Coordenada y del centro de la ventana.
  
}

void draw(){
  
  background(0); // Color de fondo negro.
  fill(30); // Rellenar las figuras de un color gris.
  strokeWeight(1); // Figuras con un grosor de contorno de 1 pixel.
  circle(x0, y0, width/1.4); // Crear un circulo en las coordenadas dadas y con el radio especificado.
  
  /* 
  Las siguientes TRES (3) lineas de codigo, 
  convierten los respectivos intervalos de tiempo
  en grados de la ventana.
  */
  segundos = map(second(), 0, 60, 0, TAU) - TAU/4;
  minutos = map(minute(), 0, 60, 0, TAU) - TAU/4;
  horas = map(hour(), 0, 24, 0, TAU) - TAU/4;
  
  //Patron de líneas
  for (float i = 0; i <=TAU; i+=TAU/12){ // Para i en el intervalo [0, TAU] con pasos de TAU/12...
        
    if( ceil((i - TAU/6) % (TAU/4)) == 1){ // Si i es un multiplo entero de TAU/4...
      
      strokeWeight(5); // Grosor de lineas de 5 pixeles.
    
    }
    
    else{ //sino... 
      
      strokeWeight(2); // Grosor de lineas de 2 pixeles.
    
    }
    
    stroke(255); // color de lineas blanco.
    
    // Construir una linea con base en el los puntos iniciales y finales dados.
    line(
    0.25*width*cos(i)+(width/2), 0.25*height*sin(i)+(height/2), // Punto inicial
    0.32*width*cos(i)+(width/2), 0.32*height*sin(i)+(height/2) // Punto final
    );
    
  }
  
  strokeWeight(8); // Grosor de lineas de 8 pixeles.
  line(x0, y0, x0 + cos(minutos)*200, y0 + sin(minutos)*200);
  
  strokeWeight(15); // Grosor de lineas de 15 pixeles.
  line(x0, y0, x0 + cos(horas)*150, y0 + sin(horas)*150);
  
  stroke(255,0,0); // color de lineas rojo.
  strokeWeight(2); // Grosor de lineas de 2 pixeles.
  line(x0, y0, x0 + cos(segundos)*220, y0 + sin(segundos)*220);
  
  noStroke(); // Sin linea de contorno.
  fill(10); // Rellenar figuras de un tono de gris.
  circle(x0, y0, 10); // Crear un circulo en las coordenadas dadas y con el radio especificado.
  
}
