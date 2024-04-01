PImage img;//Variable de tipo imagen
int space = 10;//Variable numerica de tipo entero

void setup(){
  size(900,900);//Tamño de ventana.
  img = loadImage("agujero_320x570.jpg");//Cargar la imagen.
}

void draw(){
  image(img, space, space, width - space*2,height - space*2);//Ubicar la imagen en el centro de la ventana.
}
