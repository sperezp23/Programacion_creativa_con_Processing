PFont fuente; //Declaración de una variable del tipo font

void setup(){
  size(600,600);//Tamaño de ventana
  fuente = loadFont("Algerian-72.vlw");//Cargar el tipo de fuente
  textFont(fuente);//Establecer la fuente gargada como el tipo de fuente actual
}

void draw(){
  background(192,40,60);//Color de fondo
  textSize(72);//Tamaño de texto
  text("¡Hola Mundo!",55,320);//Imprimir texto, comenzando en la pocisión indicada
}
