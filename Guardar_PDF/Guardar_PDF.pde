//Importar librerías 
import processing.pdf.*;

//Declaraciín de variables
int red, diam;


size(600, 600);//Tamañp de la ventana


beginRecord(PDF, "ellipses_color_sizes.pdf");//Comenzar a guardar los elementos para el pdf.

background(255);//Color de fondo blanco
noStroke();//Figuras sin contorno

for(int i = 60; i < width-40; i += 40){//Para i en el intervalo [60,width-40)
  for(int j = 60; j < height-40; j += 40){//Para j en el intervalo [60,height-40)
    red = int(random(0, 255));//Convertir el random en entero y guardarlo en red
    diam = int(random(5, 35));//Convertir el random en entero y guardarlo en diam
    fill(red, 50, 110);//Rellenar la figura con color rojo aleatorio
    ellipse(i, j, diam, diam);//Elipces
  }
}

endRecord();//Dejar de guardar los lementos para el pdf.
