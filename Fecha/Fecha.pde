/*
ESTE PROGRAMA IMPRIME EN PANTALLA LA FECHA.
*/


// Declaración de variables

int // Varaibles numericas de valor entero
day = 0, 
month = 0, 
year = 0; 

String // Variables de tipo cadena de texto 
texto = "";

void setup(){
  
  size(640,640); // Tamaño de ventana
  
}

void draw(){
  
  background(0); // Color de fondo de pantalla, negro;
  
  day = day(); // Guarda el valor del día actual en la variable day.
  month = month(); // Guarda el valor del mes actuales en la variable month.
  year = year(); // Guarda el valor del año actuales en la variable year.
  
  texto = nf(day, 2) + "/" + nf(month, 2) + "/" + nf(year, 4); //Genera el texto para mostrar el tiempo en pantalla.
  textSize(120); // Tamaño del texto. 
  text(texto, 40, 344); // Imprimir el texto en pantalla.
  
}
