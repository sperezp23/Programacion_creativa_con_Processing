size(500,500); //Tamaño de la interfaz 

background(50);//Color de fondo
stroke(255); //Color de lineas 
strokeWeight(2);//Grosor de lineas 
noFill(); //No rellenar las figuras

float n,p,xpos,h;//Declaración de variables

for(int y = 5; y <= height-5; y+= 10){
  
  //Rectas
  n  = map(y,5,height-5,-1,1); //Pasar de [5,altura] a [-1,1]
  p = pow(n,2);//Elevar al cuadrado
  xpos = -lerp(0,width-5,p)+width-5;//Largo de las rectas.
  line(0,y,xpos,y); //Rectas.
  
  //Cabezas de las flechas
  h=xpos-4; //Altura del los triangulos de las puntas.
  triangle(xpos,y,h,y+2,h,y-2);//Putas de las flechas.
}
