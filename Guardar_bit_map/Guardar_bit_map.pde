PGraphics big;//Declara el objero Big 

void setup(){
  big = createGraphics(3000,3000,JAVA2D);//Crea el objeto Big
  big.beginDraw();//Comience a guargar
  big.background(188,50,80);//Color de fondo
  big.strokeWeight(188);//Grosor de lineas 
  big.line(200,2800,2800,200);//Diagonal 1
  big.line(200,200,2800,2800);//Diagonarl 2
  big.endDraw();//Deje de guadar
  big.save("big.tif");//Cree la imagen
}
