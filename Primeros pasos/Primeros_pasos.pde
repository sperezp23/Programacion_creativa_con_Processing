//Tamaño de la ventana que quiero crear (Ancho, Alto)
size(1000,500); // size(x,y) el origan de coordenadas se halla en las esquina superior izquierda

triangle(30, 75, 58, 20, 86, 75);

fill(#1C8790); // Rellena la figura que voy a crear a continuación con el color especificado
ellipse(500,250,200,100); // Genera una elipce centrada en (x,y) con tamaño (a,b)

fill(#5713A7);
ellipse(700,250,100,200);

line(0,0,999,499); // (x1,y1,x2,y2) punto inicial, punto final

quad(100,100,300,200,200,300,100,200); //Crea un cuadrlatero segun los puntos que yo le de

strokeWeight(18);

point(30, 20);
point(85, 20);
point(85, 75);
point(30, 75);

noFill();

vertex(500,250);
