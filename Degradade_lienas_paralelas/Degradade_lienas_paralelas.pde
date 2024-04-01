int x = 0, espacio = 60;//Declaración de variables.

size(800,800);//Tamaño de ventana.
strokeWeight(20);//Grosor de linea.
background(56,30,94);//Color de fondo.

for(int i = 0; i <= 255; i +=8){//Para i desde 0 hasta 255 con pasos de a 8...
  stroke(242, 204-i, 47, i);//Colo de linea en degrade hacia las derecha, con transparencia.
  line(x, espacio, x, height - espacio);//Lineas paalelas.
  x += 30;//Espacio vertical entre el techo y el piso.
}
