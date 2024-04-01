size(500,500); //Tamaño interfas

background(50); //Color de fondo 
stroke(255); //Color de lineas
noFill(); //No rellenar figuras

float n,p,xpos; // declaración de variables

for(int y = 5; y < width; y+= 5){
  n  = map(y,5,width-5,-1,1); //Pasar de intervalo [5,ancho-5] al intervalo [-1,1]
  p = pow(n,2); //Elevar al cuadrado 
  xpos = lerp(0, height-5,p); //Pasar los datos al intervalo [0,altura-5] 
  line(0,y,y,xpos);//Creaar las rectas 
}
