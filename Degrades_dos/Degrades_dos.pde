size(1000,1000);//Tamaño de ventana.

float newHue = 0;//Declaración de variables.

colorMode(HSB, 360, 100, 100);//modo de color, y el rango numerico del modo de color.

for(int i = 0; i < width; i++){//Para i desde 0 hasta el ancho de la ventana...
  newHue = 360 - (i*0.09);//Degrade de rojos.
  //newHue = 90 - (i*cos(36));//Degrade de verdes.
  stroke(newHue, 100, 60);//Color de linea.
  line(i, 0, i, height);//Lineas paralelas que rellenan la ventana.
}
