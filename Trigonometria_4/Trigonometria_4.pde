/*
GENERA UN PATRON DE ARCOS CONCENTRICOS
TODOS CON UNA APERTURA ANGULAR DE PI (180°).
LOS ARCOS TENDRAN COLOLES INTERCALADOS.
*/


// Declaración de variables
int 
mouseYPos; // Posición del mouse.

float
begin, // Angulo inicial del arco.
end; // Angulo final del arco.


void setup(){
  
  size(764, 764); // Tamaño de la ventana.
  noFill(); // No rellenar las figuras.
  strokeWeight(15); // Grosor de lineas 15 pixeles.
  
}

void draw(){
  
  background(0); // Color de fondo negro.
  
  /*
  Convierte el valor de la posición del mouse del intervalo [0, height]
  al intervalo [1, 2000].
  */
  mouseYPos = int(map(mouseY, 0, height, 1, 2000));
  
  // Para i desde o hasta la posición Y del mouse, con una paso minimo de 55 px...
  for(int i = 0; i < mouseYPos; i +=53){
    
    begin = radians(i); // Convertir a radianes.
    end = begin + PI; // Angulo inicial más media vuelta.
    
    
    if( i % 2 == 0 ){ // Si i es par... 
      
      stroke(#6E4FB7); // Lineas de color Morado oscuro.
      /*
      Generar el arco en la posición indicada, con sus respectivos,
      alto y largo, desde el angulo inicial hasta el final.
      */
      arc(width/2, height/2, i, i, begin, end);  
      
    }
    
    else{ // Si no es par...
    
      stroke(#33215F); // Lineas de color Morado claro.
      arc(width/2, height/2, i, i, begin, end); // generar un arco.
    
    }
    
  }
  
}
