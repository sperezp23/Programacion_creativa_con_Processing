float x=0, y=0, px = 0, py = 0, easing = 0.08, grosor = 0;//Declaración de variables

void setup(){
  size(800,800);//Tamaño de ventna.
  stroke(0, 180);//Color de linea negro, con opacidad de 180.
  background(240);//Color de fondo blanco.
}

void draw(){
  x += (mouseX-x)*easing;//movimiento en X.
  y += (mouseY-y)*easing;//movimiento en Y.
  grosor = dist(x,y,px,py);//Función dostancia para medir la "velocidad" del movimiento.
  strokeWeight(grosor*3);//Grosor variable.
  
  if(mousePressed){
    line(px,py,x,y);//Linea de trazo, va desde la posición anterior hasta la actual.
  }
  px = x;//Almacena la ultima posición para darle continuidad al trazo.
  py = y;//Almacena la ultima posición para darle continuidad al trazo.
}
