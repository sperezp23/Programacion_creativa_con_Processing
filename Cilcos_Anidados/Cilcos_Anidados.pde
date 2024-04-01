size(500,500); //Tamaño de la interfas

for(int y = 0; y <= height; y++){ //Ciclo 1
  for(int x = 0; x < width; x++){ //Ciclo 2
    stroke(x,y-100,x-y); //Color de relleno de forma
    point(x,y); //Puntos
  }
}
