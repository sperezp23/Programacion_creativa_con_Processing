int x=150, y=150, a=300, b = 300;//Declaración de variables. 

void setup(){
  size(600,600);//Tamaño de ventana.
}

void draw(){
  background(204);//Color de fondo.
  
  if((mouseX >= x)&&(mouseX <= x+a)&&(mouseY >= y)&&(mouseY <= y+b)){//Si el cursor del mouse se halla dentro del area del rectangulo...
    fill(0);//Pintar de negro.
  }
  else{//Sino...
    fill(255);//Pintar de blanco.
  }
  rect(x,y,a,b);//Rectangulo.
}
