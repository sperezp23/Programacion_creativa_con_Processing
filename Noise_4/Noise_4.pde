float // Declaración de variables.
power = 105.0,
d = 600,
turbulence = 0.0,
base = 0.0,
offset = 0.0,
r = 0.0,
g = 0.0,
b = 0.0,
total = 0.0;

size(800,800); // Tamaño de la ventana.

for(int y = 0; y < height; y++){ // Ciclo for para recorrer el eje vertical.
  for(int x = 0; x < width; x++){ // Ciclo for para recorrer el eje horizontal.
    total = 0.0; // Reiniciar la variable total.
    
    for(float i = d; i >= 1; i = i/5){ //Ciclo for para calcular el valor de la variable total.
        total += noise(x/d, y/d) * d;
    }
    
    turbulence = 100.0 * total / d; // Calculo de la variable turbulence.
    base = (x * 0.002) + (y * 0.002); // Calculo de la variable base.
    offset = base + (power * turbulence / 256.0); // Calculo de la variable offset.
    
    r = abs(sin(offset) + 0.2) * 256.0; // Calculo de la variable r.
    g = abs(sin(offset) - 0.08) * 126.0; // Calculo de la variable g.
    b = abs(sin(offset) + 0.03) * 216.0; // Calculo de la variable b.
    
    stroke(r,g,b); // Color de los puntos.
    point(x,y); // Imprimr los puntos.
  }
}
