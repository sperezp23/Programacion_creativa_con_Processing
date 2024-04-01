int r=150, g=0, b=0; //Declaración de variables.

void setup(){
  size(800,800);//Tamaño de la ventana.
}

void draw(){
  background(r,g,b);//Color de fondo
  stroke(255);//Color blanco, lineas.
  line(width*0.5,0,width*0.5,height);//Linea media.
  
  if(mouseX > width*0.5){//Si el mouse en X es mayor que le mitad de la pantalla...
    r += 1; //Incrementa r en 1.
  }
  else{ //Sino...
    r -= 1; //Disminuye r en 1.
  }
  
  r = constrain(r,0,255);//Restringe la variable r al rango [0,255].
  println("r = " + r);//Imprime el valor de la variable r.
}
