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
  
  horas = hour();
  minutos = minute();
  segundos = second();
  
  texto = nf(horas, 2) + ":" + nf(minutos, 2) + ":" + nf(segundos, 2);
  textSize(200); 
  text(texto, 50, 430);
  
}
