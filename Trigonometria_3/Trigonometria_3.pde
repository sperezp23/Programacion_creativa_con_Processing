/*
ESTE PROGRAMA IMPRIME UN PATRON EN PANTALLA
MEDIANTE EL USO DE LA FUCIÓN SENO. PARA ELLO,
SE RECORRE TODA LA PANTALLA VARIANDO EL OFFSET, Y
EL DESFASE DEL ARGUMENTO DE LA FUNCIÓN.
*/


// Declaración de variables
float
angle = 0.0,
x = 0.0,
y = 0.0;


int
radius = 300;


size(640,640); // Tamaño de ventana. 
background(50); // Color del fondo de la pantalla (GRIS).
noStroke();


// Ciclo for para recorrer el eje x
for(int deg = 0; deg < 360; deg += 30){
    
    angle = radians(deg); //Convertir los grados en radianes.
    
    x  = width/2 + (cos(angle) * radius); // Calculo de las posición de la x.
    y  = height/2 + (sin(angle) * radius); // Calculo de las posición de la y.
    ellipse(x, y, 20, 20); // Generar las elipces.
    
}
 
