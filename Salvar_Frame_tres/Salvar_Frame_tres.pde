void setup(){
  size(800,800);//Tamaño de ventana
  background(190,30,100);//Color de fondo
  strokeWeight(10);//Grosor de linea 
}

void draw(){
  stroke(225);//Color de linea 
  line(mouseX,mouseY,pmouseX,pmouseY);//Lapiz
  
  //Salvar cada 5 frames
  if((frameCount % 5)==0){//Si el frame count es multiplo de 5
    println(frameCount);//Imprima el valor del frame count
    //saveFrame("imagenes/draw####.jpg")
  }
}
