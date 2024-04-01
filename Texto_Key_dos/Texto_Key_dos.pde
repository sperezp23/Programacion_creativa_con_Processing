void setup(){
  size(220,220);//Tamaño de ventana.
}

void draw(){
  background(204);//Color de fondo.
  
  if(keyPressed){//Si hay una tecla precionada...
    if((key == 'h')||(key == 'H')){//Si Key es igual a h o a H...
      line(30,60,90,60);//Linea horizontal.
    } 
     else if((key == 'n')||(key == 'N')){//Si key es igual a n o a N...
      line(30,20,90,100);//Linea diagonal.
    }
  }
  line(30,20,30,100);//Linea vertical 1.
  line(90,20,90,100);//Linea vertical 2.
}
