size(500,500);//Tamaño de ventana

background(50);//Color de fondo
stroke(255);//Color de lineas
noFill();//No rellenar las figuras

float n,p,ypos; //Declaración de variables 

for(int x = 5; x < width; x+= 5){
  n  = map(x,5,width-5,-1,1); // Pasar los dados del rango [5,ancho-5] al rango [-1,1]
  p = pow(n,2); //Eleva al cuadrado
  ypos = lerp(20, height-5,p); // Asigna los valores de P en un rango [20,altura-5] segun el valor de p
  line(x,0,x,ypos); //Pinta una Linea
}
