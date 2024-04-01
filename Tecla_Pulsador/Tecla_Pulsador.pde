boolean interruptor = false;//Declaración de variables booleanas.

void setup(){
  size(500,500);//Tamaño de ventena.
  strokeWeight(40);//Grosor de linea.
  stroke(255);//Color de linea.
}

void draw(){
  background(210,30,50);//Color rojo de fondo.
  line(100,100,400,400);//Linea 1.
  
  if(interruptor){//Si interruptor es true...
    line(400,100,100,400);//Linea 2.
  }
}

void keyPressed(){//Se reproduce una vez cada que se precione una tecla.
  interruptor = !interruptor;//Switchea el valor de la variable interruptor.
}
