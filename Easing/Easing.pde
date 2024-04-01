float x, y, easing = 0.1, radio = 30;//Declaración de variables.

void setup(){
  size(800,800);//Tamaño de ventana.
}

void draw(){
  background(0);//Fondo de color negro.
  
  //Easing (es como un lerp pero manual), el valor de easing debe estas en el intervalo [0.0, 1.0].
  x += (mouseX-x)*easing;//movimiento en X.
  y += (mouseY-y)*easing;//movimiento en Y.
  
  fill(220);//Eelleno blanco.
  ellipse(x,y,2*radio,2*radio); //Elipce grande
  
  fill(200,0,0); //Eelleno rojo.
  ellipse(mouseX,mouseY,radio,radio); //Elipse pequeña.
  
  println("X = "+mouseX+" : "+x+" | Y = "+mouseY+" : "+y); //Valores de las variables.
}
