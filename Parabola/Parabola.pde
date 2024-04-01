size(500,500); //Tamaño de la interfaz

float n,y; //Declaración de variables 

for(float x = 1; x < width; x+=1){
  n = norm(x, 0.0, width); //Normaliza los datos
  y = pow(n,2); // Eleva los datos al cuadrado 
  y *= width; // Multiplica por el grosor 
  strokeWeight(2); // Grosor de linea
  point(x,y); //Grafica la parabola
}
