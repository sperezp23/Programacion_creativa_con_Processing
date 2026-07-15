/*
ESTE PROGRAMA IMPRIME EN PANTALLA EL VALOR 
DE LA HORA ACTUAL, CON MINUTOS, Y SEGUNTOS.
*/


// Declaración de variables

int // Varaibles numericas de valor entero
horas = 0, 
minutos = 0, 
segundos = 0; 

String // Variables de tipo cadena de texto 
texto = "";

void setup(){
  
  size(800,800); // Tamaño de ventana
  
}

void draw(){
  
  background(0); // Color de fondo de pantalla, negro;
  
  horas = hour(); // Guarda el valor de la hora actual en la variable horas.
  minutos = minute(); // Guarda el valor de los minutos actuales en la variable minutos.
  segundos = second(); // Guarda el valor de los segundos actuales en la variable segundos.
  
  texto = nf(horas, 2) + ":" + nf(minutos, 2) + ":" + nf(segundos, 2); //Genera el texto para mostrar el tiempo en pantalla.
  textSize(200); // Tamaño del texto. 
  text(texto, 50, 430); // Imprimir el texto en pantalla.
  
}
