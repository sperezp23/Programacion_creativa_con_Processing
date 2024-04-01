size(600,600); //Tamaño de la interfaz
noFill(); //No rellenar las figuras

//Patron de elipces concentricas
for (int i = 10; i <= width; i+=30){ 
  ellipse(width/2, height/2, i,i);  
}


for (float i = 0; i <=2*PI; i+=(2*PI)/32){
  
  //Patron de líneas
  strokeWeight(1);
  stroke(0);
  line(width/2, height/2, 0.5*width*cos(i)+(width/2), 0.5*height*sin(i)+(height/2));
  
  strokeWeight(10); //Grosor del contorno del resto de figúras
  
  //Patrones de puntos
  stroke(#FF050E); //Color de los puntos rojos
  point(40*i*cos(i)+(width/2), 40*i*sin(i)+(height/2)); //Puntos Rojos
  
  stroke(#0573FF); //Color de los puntos azules 
  point(-40*i*cos(i)+(width/2), -40*i*sin(i)+(height/2)); //Puntos azules
  
  //Patrones de elipces 2
  strokeWeight(1); //Grosor de líneas
  stroke(0); //Color de lineas
  ellipse(100*cos(i)+(width/2), 100*sin(i)+(height/2),200,200); //Elipces rotatorias
}
  
