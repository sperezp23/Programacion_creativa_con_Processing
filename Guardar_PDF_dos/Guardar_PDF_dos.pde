//Importa la librería para guadar como pdf
import processing.pdf.*;

//Declaración de variables
boolean saveOneFrame = false;
int red, diam;

void setup(){
  size(600,600);//Tamaño de la ventana
}

void draw(){
  background(0);//Color de fondo negro
  
  if (saveOneFrame == true){//Si saveOneFrame es true
    beginRecord(PDF,"imagenes/elipse_###.pdf");//Comenzar a guardar los elementos para el pdf.
  }
  
  noStroke();//Imagenes sin contornor
  
  for(int i = 60; i < width-40; i += 40){ //Para i en el intervalo [60,widht-40)
   for(int j = 60; j < height-40; j += 40){ //Para j en el intervalo [60,heigth-40)
     red = int(random(0, 255));//Convierta el valor del random en entero y guardelo en red
     diam = int(random(5, 35));//Convierta el valor del random en entero y guardelo en diam
     fill(red, 50, 110);//color de las elipses con el rojo aleatório
     ellipse(i, j, diam, diam);//Elipces
   }
  }
  
  if(saveOneFrame == true){//Si saveOneFrame es true
    endRecord();//Dejar de guardar los lementos para el pdf.
    saveOneFrame = false;//Asignar el valor false a SaveOneFrame
  }
}

void mousePressed(){//Cuando se presione el mouse
  saveOneFrame = true;//Asignar el valor true a SaveOneFrame
}
