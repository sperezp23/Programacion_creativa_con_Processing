size(500,500); //Tamaño de la interfas

int x = 50, y = 400; //Inicialisación de variables

while(x <= 400){ //Ciclo para generar el patrón
  line(x, 50, x+50, 450); //Lineas paralelas 
  line(y, 50, y-50, 450); //Lineas paralelas
  x += 25; //Incremento de la coodenada horizontal
  y -= 25; //Incremento de la coodenada vertical
}
