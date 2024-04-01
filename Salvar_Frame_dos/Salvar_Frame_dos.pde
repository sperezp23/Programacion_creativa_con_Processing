//Declaración de variables
boolean record = false;//Variable booleana 
float x=0, y=0,v=0.0,unit=0.0031,n,grosor;//Variables numericas de punto flotante
int currentFrame, Totalframes;//Variable numerica entera

void setup(){
  size(800,800);//Tamaño de la ventana
  background(190,30,50);//Color de fondo rojo
  frameRate(30);//Frames por segundo
}

void draw(){
  noStroke();//Sin lineas de contorno
  fill(190,30,50,50);//Rellenar las figuras con el mismo color que el del fondo
  rect(0,0,width,height);//restangulo del tamaño de la pantalla
  
  stroke(random(255),0,0);//color de lineas negro, pero aleatorio
  
  for(int i = 0; i < width; i += 1){//Ciclo for para i en el intervalo [0,widht)
    n = noise(v)*width;//Calcula el valor del noise 
    point(x+i,n+y);//Distribuye los puntos equiespaciados en y con noise en y
    v += unit;//Le suma a v el valor de unit 
    grosor = (x+n)/20;//Decalra la variable grosor coom
    strokeWeight(grosor);//Grosor de los puntos
    
  }
  
  //Salvar cuando record es true
  if(record == true){//Sí record es true 
    Totalframes = currentFrame+10;//Le suma 10 al valor del frame actual
    if(Totalframes >= frameCount){//Sí el numero total de frames es mayor que el numero de frames actual
      println("Imagen salvada_" +frameCount);//Imprime el nombre de cada imagen guardada
      saveFrame("images/draw###.jpg");//Guarda el frame actual
    }
    else{//Sino se cumple lo anterior
        record = false;//record es falso
    }
  }
}

void mousePressed(){//Cuando se presione el mouse
  currentFrame = frameCount;//Current frame es igual al valor del frame actual
  record = !record;//Swichee el valor de record (Pasa de false a true)
}
