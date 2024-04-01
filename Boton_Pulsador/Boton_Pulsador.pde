int x=150, y=150, a=300, b = 300;//Declaración de variables numericas enteras.
boolean button = false;//Variables Booleanas.

void setup(){
  size(600,600);//Tamaño de ventana.
}

void draw(){
  if(button){//Si button es True...
    fill(225);//Relleno blanco.
    stroke(0);//Lineas negras.
  }
  else{//Sino...
    fill(0);//Relleno negro.
    stroke(225);//Lineas negras,
  }
  
  background(255);//Fondo blanco.
  rect(x,y,a,b);//Rectangulo.
}

void mousePressed(){//Esta función es llamada cuando se precione un boton del mouse, solo se corre una vez.
  if((mouseX >= x)&&(mouseX <= x+a)&&(mouseY >= y)&&(mouseY <= y+b)){//Si el cursor del mouse se halla dentro del area del rectangulo...
    if(button){//Sí button es True...
      button = false;//switchee el valor de la variable button.
    }
    else{//Sino...
      button = true;//switchee el valor de la variable button.
    }
  }
}
