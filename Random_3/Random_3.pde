float mx, offsetA, offsetB; // Declaración de variables.

void setup(){
  size(800,800); // Tamaño de la ventana.
}

void draw(){
  background(204); // Colo del fondo de la ventana.
  
  for(int x = 0; x < width; x += 10){ //Ciclo for de cero al ancho de la ventana con paso de a 10 
    
    mx = mouseX/50; // mx tomará el valor de la posición en x del mouse dividido 50.
    offsetA = random(-mx, mx); // otorga a lavariable un valor aleatorio dentro del rango establecido.
    offsetB = random(-mx, mx); // otorga a lavariable un valor aleatorio dentro del rango establecido.
    
    line(x + offsetA, 0, x - offsetB, height); // Genera linea con las coordenada de dos puntos dados.
  }
}
