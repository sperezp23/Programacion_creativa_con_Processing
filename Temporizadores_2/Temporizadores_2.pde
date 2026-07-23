/*
ESTE PROGRAMA, MUESTRA ("SIMULA") EN PANTALLA UN CIRCULO
QUE OSCILA DE FORMA HORIZONTAL. CONFORME PASA EL TIEMPO
EL MOVIMIENTO VA ACELERANDO Y EL COLOR DE LA FIGURA 
VA PASANDO DE ROJO A AMARILLO, APARENTANDO UN INCREMENTO
EN LA TEMPERATURA. LAS "MEDICIONES" DE LA TEMPERATURA Y LA
ACELERACIÓN, SE IMPRIMEN EN LA VENTANA DEL PROGRAMA. 
*/


// DECLARACIÓN DE VARIABLES
boolean
aumentar = true; // Permite cambiar el sentido del movimiento (ayuda a generar la oscilación).


int
tiempo_actual = 0; // Almacena el valor del tiempo en [ms] desde que inició el programa. 


float
x = 0.0, // Variavle para almacenar la pocición 'x' del circulo.
aceleracion = 0.0, // Variable para simular la asceleración del circulo.
temperatura = 0.0, // Variable para simular la temperatura del circulo.
temperatura_color = 240; // Variable para controlar el cambio de color del circulo.


String
texto = ""; // Variable de texto para mostrar en pantalla los datos de 'temperatura' y 'aceleración'


color 
color_inicial = #FF0303, // Color de la temperatura inicial.
color_final = #FAFF03; // Color de la temperatura final.


void setup(){
  
  size(640,640); // Tamaño de la ventana.
  x = width/2; // posición inicial del circulo.
  colorMode(HSB, 360, 100, 100);
  
}

void draw(){
  
  tiempo_actual = millis(); // Tiempo en [ms] de ejecución del programa.
  
  
  background(0); // Color de fondo de la pantalla.
  fill(255); // Rellenar las figuras de color blanco.
  
  
  aceleracion = tiempo_actual * 2e-3; // Calcular la 'aceleración' del circulo.
  aceleracion = constrain(aceleracion, 0, 20); // Restringir la aceleración al intevalo [0,20].
  
  
  texto = "Aceleración: " + nfc(aceleracion, 1); // Texto de la aceleración.
  textSize(50); // Tamaño del texto.
  text(texto, 160, 50); // Imprimir el texto en pantalla en la posición indicada. 
  
  
  // Condicional para cambiar el sentido del movimiento.
  aumentar = ( (x == 60) || (x == width - 60) ) ? !aumentar : aumentar; 
  x += ( aumentar ) ? aceleracion : -aceleracion;
  x = constrain(x, 60, width - 60); // Riestringir el valor de x para que la pelota no se salga de la ventana.
  
  
  temperatura = map(aceleracion, 0, 20, 240, 420); // Pasar la aceleración al intervalo [0,1] para convertirla en 'temperatura'.
  temperatura_color = temperatura % 360; // Calcular el color correspondiente a cada temperatura.
  
  
  texto = "Temperatura: " + round(temperatura*100); // Texto de la temperatura.
  text(texto, 140, 110); // Imprimir el texto en pantalla en la posición indicada.
  
  
  noStroke(); // Figuras sin lineas de contorno.
  fill(temperatura_color,100,100); // Rellenar las figuras del color indicado.
  circle(x, height/2, 120); // Generar un circulo en la posición indicada con el diametro indicado.
  
}
