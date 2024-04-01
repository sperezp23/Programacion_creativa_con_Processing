int x = 250, y = 250; //Declaración de variables.

void setup(){
  size(500,500);//Tamaño de ventana.
}

void draw(){
  background(#1C7CC4);//Color de fondo.
   
  if(keyPressed && (key == CODED)){//Si hay una tecla precionada y está codificada...
    if(keyCode == LEFT){//Sí el codigo de la tecla es Left...
      x -= 3;//Disminuya x en 3.
    }
    else if(keyCode == RIGHT){//Sí el codigo de la tecla es right...
      x += 3;//Aumente x en 3.
    }
    else if(keyCode == UP){//Sí el codigo de la tecla es up...
      y -= 3;//Disminuya y en 3.
    }
    else if(keyCode == DOWN){//Sí el codigo de la tecla es down...
      y += 3;//Aumente y en 3.
    }
  }
  
  x = constrain(x,25,475);//x se debe mantener en el intervalo [25,475] (el ancho y el largo menos el radio de la circunferencia).
  y = constrain(y,25,475);//y se debe mantener en el intervalo [25,475] (el ancho y el largo menos el radio de la circunferencia).
  
 ellipse(x,y,50,50);//Generar la elipce.
}
