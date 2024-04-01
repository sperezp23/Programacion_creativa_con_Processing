//Importa la librería para guadar como pdf
import processing.pdf.*;

void setup(){
  size(600,600);//Tamaño de la ventana
  background(255);//Fondo blanco
}

void draw(){
  stroke(0,20);//Color de linea negro con alpha 20
  strokeWeight(1);//Grosor de linea 
  line(mouseX,0,width-mouseY,height);//Linea con P0(mouseX,0) y Pf(width-mouseY,height)
}

void keyPressed(){//Cuando se presione una tecla
  if(key == 'B' || key == 'b'){//Si la tecla presionada es 'B' o 'b'
    beginRecord(PDF,"lines.pdf");//Comienze a guardar los frames
    background(255);//Fondo blanco otra vez
  }
  else if (key == 'E' || key == 'e'){//Si la tecla presionada es 'E' o 'e'
    endRecord();//Deje de guadar lso frames
    exit();//Salga del programa
  }
}
