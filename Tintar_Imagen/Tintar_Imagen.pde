color morado = color(190,30,150,255), verde = color(90,180,50,170), amarillo = color(190,130,50,150);//Declaración de variables de color.
PImage img;//Vatiables de tipo imagenes.

void setup(){
  size(800,500);//Tamaño de ventana.
  img = loadImage("agujero_320x570.jpg");//Cargar imagen.
}

void draw(){
  background(152);//Color de fondo.
  tint(morado);//Tintar la imagen.
  image(img,0,0);//Ubicar la imagen.
  
  tint(verde);//Tintar la imagen.
  image(img,width*0.33,0);//Ubicar la imagen.
  
  tint(amarillo);//Tintar la imagen.
  image(img,width*0.66,0);//Ubicar la imagen.
}
