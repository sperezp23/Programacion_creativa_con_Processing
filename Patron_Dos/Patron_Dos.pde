size(500,500); //Tamaño

int y = 5; //Declaracion de variables

while(y < height){ //Aumentar el valor de la y desde su valor inicial al largo de la pantalla
  fill(#9974F0); //Color de la primera columna
  rect(0,y,200,10); //Rectangulos de la primera columna
  fill(#7AEDD1); //Color de la segunga columba
  rect(210,y,200,10); //Rectangulos de la segunda columna
  y += 15; // Espacio de separación vertical de rectangulos
}
