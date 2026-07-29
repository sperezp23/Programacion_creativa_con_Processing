
//FUNCIÓN SIGNO
float sgn( float x){

  return ( x == 0 ) ? 0 : ( abs(x) / x );

}


// FUNCIÓN ESCALON UNITARIO.
float u( float x ){ 

  return ( x == 0 ) ? 1 : 0.5 * ( sgn(x) + 1 );
  
}


// FUNCIÓN DEL RESORTE SIN ESCALAR.
float t_1( float x ){

  float t1 = 0;
  
  t1 = ( abs(x) - 0.25 ) * 
  ( u(x - 0.25) - u(x - 0.5) ) + 
  ( abs(x - 3) - 0.25 ) * 
  ( u(x - 2.5) - u(x - 3.25) );
  
  
  for (float n = 1; n <= 2; ++n){
  
    t1 += ( abs(x - n) - 0.25 ) * ( u(x - ( (2*n - 1) / (2) ) ) - u(x - ( (2*n +1) / (2) ) ) ); 
    
  }
  
  return t1;

}


// FUNCIÓN DEL RESORTE ESCALADA (AMPLITUD 1, LARGO 1).
float t_2 (float x){

  return 4 * t_1( x * 3.5);
  
}

// RESORTE HORIZONTAL.
void resorte_h(float x0, float y0, float largo, float amplitud){
  
  for (float x = x0; x <= x0 + largo; x += 0.1){
  
    float t2 = ( amplitud * t_2( (x -x0) / largo) ) + y0;
    
    point(x, t2);
  
  }
  
}
  
// RESORTE VERTICAL.
void resorte_v(float x0, float y0, float largo, float amplitud){
  
  for (float y = y0; y <= y0 + largo; y += 0.1){
  
    float t2 = ( amplitud * t_2( (y -y0) / largo) ) + x0;
    
    point(t2, y);
  
  }
  
}
