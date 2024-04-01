size(500,500); //Tamaño de la interfas

for(float y = 5; y <= height; y*= 1.1){ //Primer ciclo
  for(float x = 1; x < width; x+= 5){ //Segundo ciclo
    //line(x, y, x, y-2);
    strokeWeight(2); //Grososor de linea o puntos
    point(x,y-5); // disperción de los puntos
  }
}
