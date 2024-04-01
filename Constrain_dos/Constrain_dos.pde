int r=0, g=0, b=0; //Declaración de variables.

void setup(){
  size(800,800);//Tamaño de la ventana.
}

void draw(){
  background(r,g,b);//Color de fondo.
  
  stroke(255);//Color blanco, lineas.
  
  line(width*0.5,0,width*0.5,height);//Vertical.
  line(0,height*0.5,width,height*0.5);//Horizontal.
  
  if(mouseX > width*0.5){//Si el mouse en X es mayor que le mitad de la pantalla...
    r += 1; //Incrementa r en 1.
  }
  else{ //Sino...
    r -= 1; //Disminuye r en 1.
  }
  
  if(mouseY > height*0.5){//Si el mouse en Y es mayor que le mitad de la pantalla...
    b += 1; //Incrementa b en 1.
  }
  else{ //Sino...
    b -= 1; //Disminuye b en 1.
  }
  
  if(mousePressed){//Si se preciona un boton del mouse...
    g += 1; //Incrementa g en 1.
  }
  else{ //Sino...
    g -= 1; //Disminuye g en 1.
  } 
  
  r = constrain(r,0,255);//Restringe la variable r al rango [0,255].
  g = constrain(g,0,255);//Restringe la variable r al rango [0,255].
  b = constrain(b,0,255);//Restringe la variable r al rango [0,255].
  
  println("Red = " + r +" Green = " + g+" Blue = " + b);//Imprime el valor de la variable r.
}
