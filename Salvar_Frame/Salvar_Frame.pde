int offset = 50;//Declara la variavle offset como un entero con valor inicial de 50 

void setup(){
  size(800,800);//Tamaño de la ventana
  noStroke();//Formas sin contorno
  frameRate(24);//Frames por segundo
}

void draw(){
  //background(210,10,60);//Color de fondo rojo 
  //fill(0);//Relleno de formas negro
  background(#2050F5);//Color de fondo azul
  fill(#7AFF2E);//Relleno de formas verde
  
  for(int x = offset; x < width-offset; x += 4){//Para x desde el valor de offset hasta que sea menor que width-offset, aumente de a 4 por cada ciclo.
    for(int y = offset; y < height-offset; y += 40){//Para y desde el valor de offset hasta que sea menor que height-offset, aumente de a 40 por cada ciclo.
      ellipse(x+random(-0.1,0.1),y+random(-5,5),3,3);//Elipses de con centro en (x+random(-0.1,0.1),y+random(-5,5))       
    }
  }
  
  if((frameCount > 20)&&(frameCount < 31)){//Si el valor de frameCount está entre (20,31)
    saveFrame("video/img_###.png");//Salve los frames en la carpeta video, con el nombre img_### en formato png
    println(frameCount);//Imprima el valor de frameCount
  }
  //println(frameRate);//Imprima el valor del frameRate
}
